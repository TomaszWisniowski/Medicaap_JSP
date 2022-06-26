package pl.medicaap.tomaszwisniowski;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pl.medicaap.tomaszwisniowski.model.Doctor;
import pl.medicaap.tomaszwisniowski.model.Nurse;
import pl.medicaap.tomaszwisniowski.model.Patient;
import pl.medicaap.tomaszwisniowski.model.PatientCard;
import pl.medicaap.tomaszwisniowski.modelForm.DoctorForm;
import pl.medicaap.tomaszwisniowski.modelForm.NurseForm;
import pl.medicaap.tomaszwisniowski.modelForm.PatientCardForm;
import pl.medicaap.tomaszwisniowski.modelForm.PatientForm;
import pl.medicaap.tomaszwisniowski.service.DoctorService;
import pl.medicaap.tomaszwisniowski.service.NurseService;
import pl.medicaap.tomaszwisniowski.service.PatientCardService;
import pl.medicaap.tomaszwisniowski.service.PatientService;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
public class ApplicationController {

    @Autowired
    private DoctorService doctorService;

    @Autowired
    private NurseService nurseService;

    @Autowired
    private PatientService patientService;

    @Autowired
    private PatientCardService patientCardService;

    @GetMapping("/")
    public ModelAndView root() {

        ModelAndView view = new ModelAndView();

        System.out.println();  /////[ROLE_USER]

        if(userHasAuthority("ROLE_DOCTOR")){
            return new ModelAndView("profile");
        }
        if(userHasAuthority("ROLE_NURSE")){
            return new ModelAndView("profile");
        }
        if(userHasAuthority("ROLE_ADMIN")){
            return new ModelAndView("admin/adminProfile");
        }

        return new ModelAndView("login");
    }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //THIS METHOD CHECK FROM LIST OF ACTUALLY LOGED USER IN SYSTEM AND BY FOR LOOP CHECK APPROPRIATE ROLE NAME
    public static boolean userHasAuthority(String authority)
    {
        List<GrantedAuthority> authorities = SecurityContextHolder.getContext().getAuthentication().getAuthorities().stream().collect(Collectors.toList());
        for (GrantedAuthority grantedAuthority : authorities) {
            if (authority.equals(grantedAuthority.getAuthority())) {
                return true;
            }
        }
        return false;
    }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    @GetMapping("/login")
    public ModelAndView login() {return new ModelAndView("login");
    }

    @GetMapping("/admin/adminProfile")
    public ModelAndView adminProfile() {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        String authorities = SecurityContextHolder.getContext().getAuthentication().getAuthorities()
                .stream().map(GrantedAuthority::getAuthority)
                .collect(Collectors.joining(", "));

        Map<String, String> model = Map.of(
                "username", username,
                "authorities", authorities);
        return new ModelAndView("admin/adminProfile", model);
    }

    @PostMapping("/admin/addDoctor")
    public ModelAndView addDoctor(@ModelAttribute("doctorForm")DoctorForm doctorForm){
        Doctor doctor = doctorService.addDoctor(doctorForm.getMedical_license_number(), doctorForm.getFirst_name(), doctorForm.getLast_name()
        , LocalDate.parse(doctorForm.getDate_of_birth()), doctorForm.getTel(), doctorForm.getCity(), doctorForm.getStreet(), doctorForm.getHouse_number()
        , doctorForm.getFlat_number());
        return new ModelAndView("/admin/adminProfile");
    }

    @GetMapping("/admin/doctorRegistration")
    public ModelAndView doctorRegistration(ModelMap model){
        return new ModelAndView("admin/doctorRegistration", Map.of("doctorForm", new DoctorForm()));
    }

    @GetMapping("/admin/doctorsList")
    public ModelAndView doctorsList(){

        List<Doctor> ttt = doctorService.getDoctors();
        System.out.println(ttt);

        return new ModelAndView("admin/doctorsList", Map.of("thomas", doctorService.getDoctors()));
    }


    @PostMapping("/admin/addNurse")
    public ModelAndView addNurse(@ModelAttribute("nurseForm") NurseForm nurseForm){
        Nurse nurse = nurseService.addNurse(nurseForm.getMedical_license_number(), nurseForm.getFirst_name(), nurseForm.getLast_name()
                , LocalDate.parse(nurseForm.getDate_of_birth()), nurseForm.getTel(), nurseForm.getCity(), nurseForm.getStreet(), nurseForm.getHouse_number()
                , nurseForm.getFlat_number());
        return new ModelAndView("/admin/adminProfile");
    }

    @GetMapping("/admin/nurseRegistration")
    public ModelAndView nurseRegistration(ModelMap model){
        return new ModelAndView("admin/nurseRegistration", Map.of("nurseForm", new NurseForm()));
    }

    @GetMapping("/admin/nursesList")
    public ModelAndView nursesList(){

        List<Nurse> ttt = nurseService.getNurses();
        System.out.println(ttt);

        return new ModelAndView("admin/nursesList", Map.of("thomas1", nurseService.getNurses()));
    }


    @PostMapping("/admin/addPatient")
    public ModelAndView addPatient(@ModelAttribute("patientForm") PatientForm patientForm){
        Patient patient = patientService.addPatient(patientForm.getPesel(), patientForm.getFirst_name(), patientForm.getLast_name()
                , LocalDate.parse(patientForm.getDate_of_birth()), patientForm.getTel(), patientForm.getCity(), patientForm.getStreet(), patientForm.getHouse_number()
                , patientForm.getFlat_number());
        return new ModelAndView("/admin/adminProfile");
    }

    @GetMapping("/admin/patientRegistration")
    public ModelAndView patientRegistration(ModelMap model){
        return new ModelAndView("admin/patientRegistration", Map.of("patientForm", new PatientForm()));
    }

    @GetMapping("/admin/patientsList")
    public ModelAndView patientsList(){

        List<Patient> ttt = patientService.getPatients();
        System.out.println(ttt);

        return new ModelAndView("admin/patientsList", Map.of("thomas2", patientService.getPatients()));
    }




    @PostMapping("/admin/addPatientCard")
    public ModelAndView addPatientCard(@ModelAttribute("patientCardForm") PatientCardForm patientCardForm){
        PatientCard patientCard = patientCardService.addPatientCard(patientCardForm.getPatient_id(), patientCardForm.getInterview(), patientCardForm.getPhysical_examination()
                ,patientCardForm.getDiagnosis(), patientCardForm.getVisit_history());
        return new ModelAndView("/admin/adminProfile");
    }

    @GetMapping("/admin/patientCard")
    public ModelAndView patientCard(ModelMap model){
        return new ModelAndView("admin/patientCard", Map.of("patientCardForm", new PatientCardForm()));
    }

}
