//
//  ListofExercise.swift
//  fitness11IOS
//
//  Created by Vinith kumar Tatipally on 2021-12-23.
//

import SwiftUI

struct ListofExercise: View {
    private let imagList: [ExerciseItems] = [
        ExerciseItems(imag: "L0", name: "Front Planks", description: "Planks are a great core stabilizing exercise.  Your entire core is stabilized through constant tension, so nothing is neglected and they are completely safe.  Get in pushup position on your forearms with your elbows bent.  Hold yourself up in a straight line and pull your belly button in to create tension.  Hold for as long as you can before your back sags to the floor.  For a more difficult variation, raise your opposite leg and arm off the ground."),
     ExerciseItems(imag: "L1", name: "Side Planks", description: "The side plank is the same concept as the front plank except this time you’ll be extended on your side with only one elbow and forearm on the ground.    Your other hand can point straight up in the air or rest of your hips.  Raise your hips off the ground and keep tension in the core to form a straight line with your body.  Hold until failure.  A variation of the side plank can be moving your hips in a side to side motion (up and down off the ground) for repetitions instead of holding still.  Side planks are great for targeting the obliques."),
     ExerciseItems(imag: "L2", name: "AB wheel Rollouts", description: "For starters, get in a kneeling pushup position – like the plank but with your knees resting on the ground.  Hold the ab wheel between your hands and push it out in front of you going as far forward and as low to the ground as you are able while at the same time keeping your back straight and core tense.  Then, the hard part, is rolling the wheel back into the start position.  The only part of your body that should be on the ground are your knees and toes.  No more than 10 rollouts per set are needed with the ab roller."),
     ExerciseItems(imag: "L3", name: "WindShield Wipers", description: "Lay flat on your back with your arms extended out on the ground in a “T” shape for stability as needed.  Start with your legs 90º vertical in the air.  Keeping them together, let your legs fall to a side until they are just a few inches off the ground.  Make sure to keep your back and shoulders planted to the ground by only twisting at the waist.  Now lift your legs back to the starting position and repeat the movement to the other side.  These will absolutely obliterate your obliques."),
     ExerciseItems(imag: "L4", name: "Lying Leg Raises", description: "There are many ways to change up lying leg raises to keep the routine from becoming too dull.  While holding your legs a foot above the ground, them over one another horizontally like they are a pair of scissors and keep crossing until failure.  Or cross them up and down vertically.  Or hold them together and move them in little circles.  Or perform the bicycle motion with your legs.  Endless possibilities."),
     ExerciseItems(imag: "L5", name: "Hanging leg Raises", description: "A variation of the leg raise but instead of laying down on the ground or on a bench, you instead hang by your hands on a pullup bar.  However, it can also be done on a set of parallel dip bars if only those are available.  Start in the hanging pullup position on a pullup bar and lift your knees up toward the ceiling until they are at waist level.  Don’t forget to contract your abdominal muscles to aid you.  Then lower to the starting position and repeat.  For a more difficult version of this workout, extend your legs and bring the feet up rather than just your bent knees. "),
     ExerciseItems(imag: "L6", name: "Standing Russian Twists", description: "It’s rumored that Russian shot putters created this exercise to strengthen their rotational throwing motions.  The Russian twist can be performed on the ground in a situp position with the legs hovering above the ground and a medicine ball between your hands.  However, we’re going to avoid this method because of the high likelihood that the back is going to round quickly as it fatigues and instead of using the obliques to twist the waist, the lower back will come into play.  A more safe variant of the seated Russian twist is performed standing with an Olympic barbell, but a medicine ball may be used as well in the standing version."),
        ExerciseItems(imag: "L7", name: "side Planks", description: "Similar in motion to standing Russian twists, this movement can be performed with a cable machine or medicine ball.  Stand next to a cable machine with your side.  You can start from the low position or the high position.  Grab your preferred handles for the cable machine (ie. rope or D-handles).  Keeping your arms as straight as possible and your hips facing forward, pull the cable across to the opposite side of your body while rotating your torso and slightly pivoting your hips in the direction of the turn.  Now bring the arms back across your body back to the starting position and repeat for a few reps.  Switch and do the the same thing on the other side of your body."),

    ]
    
    
    
    var body: some View {
        NavigationView{
            List(imagList) { imagItem in
                NavigationLink(destination: DetailsView(ExItem:imagItem)){
                    HStack {
                        ImageCircleView(imagItem:imagItem)
                        Text(imagItem.name).font(.headline)
                    }.padding(7)
                }
            }.navigationBarTitle("Exercise List")
            }
    }
}

struct DetailsView: View {
    let ExItem:ExerciseItems
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {

                
                Text(ExItem.name).font(.largeTitle).bold()
                
                Spacer()
            }
            VStack{
            Image(ExItem.imag)
                .shadow(radius: 3)
                .frame(width: 20, height: 45)
            
            
            Text(ExItem.description).frame(width: 500, height: 500, alignment: Alignment.center)
        Spacer()
            }.padding(.top)
        }
        .padding()
        .navigationBarTitle(Text(ExItem.name), displayMode: .inline)
    }
}
struct ImageCircleView: View{
    let imagItem: ExerciseItems
    var body: some View{
        ZStack{
            Image(imagItem.imag).resizable()
                .shadow(radius: 3)
                .font(.largeTitle)
                .frame(width: 65, height: 65)
                
        }
}
    }
struct ExerciseItems: Identifiable{
    let id = UUID()
    let  imag:String
    let name:String
    let description:String
}

struct ListofExercise_Previews: PreviewProvider {
    static var previews: some View {
        ListofExercise()
    }
}
