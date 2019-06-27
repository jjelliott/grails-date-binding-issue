package datebinding

class DateBindingController{ 

    def index(){
        
    }
    
    def validateDate(Example ex) {
        if (ex.validate()){
            render "validated"
        } else {
            render ex.errors.allErrors
        }
    }
    
}