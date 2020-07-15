require 'rails_helper' 

describe User do

    user = User.new( 

        name: 'Test', 
        email: 'test@gmail.com', 
        password: '123456789'

    )

    context 'validation tests' do
        
           it "ensure the presence of name, email and password" do
                expect(user).to be_valid
           end
           
           it "should be a valid email" do
                user.email = nil
                expect(user).to_not be_valid
           end  
    
           it "should be a valid password" do
                user.password = nil
                expect(user).to_not be_valid
           end

           it "should be a valid password with more than 8 digits" do
                user.password = '1234'
                expect(user).to_not be_valid
           end
           
           it "should have a valid name" do
                user.name = nil      
                expect(user).to_not be_valid
           end   

    end
end