package gwendolen.agilex_verification;

import java.util.HashSet;
import java.util.Set;

import ail.syntax.*;
import gwendolen.mas.VerificationofAutonomousSystemsEnvironment;


public class inspectionVerificationEnv
        extends VerificationofAutonomousSystemsEnvironment {



    @Override
    public Set<Predicate> generate_percepts() {

        Set<Predicate> beliefs = new HashSet<Predicate>();

        // Nondeterministic environment conditions

        boolean reached_location0 = random_bool_generator.nextBoolean();
        boolean reached_location1 = random_bool_generator.nextBoolean();
        boolean reached_location2 = random_bool_generator.nextBoolean();
        boolean reached_location3 = random_bool_generator.nextBoolean();
        //boolean reached_location2 = false;
        //boolean reached_location3 = false;

        boolean tooClose = random_bool_generator.nextBoolean();
        //boolean tooClose = false;




        if (reached_location0) {
            //generate at(location)
            Predicate at = new Predicate("at");
            at.addTerm(new NumberTermImpl(0));
            System.out.println("[ENV]  -> Percept generated: " + at);
            beliefs.add(at);
        }

        if (reached_location1) {
            //generate at(location)
            Predicate at = new Predicate("at");
            at.addTerm(new NumberTermImpl(1));
            System.out.println("[ENV]  -> Percept generated: " + at);
            beliefs.add(at);
        }

        if (reached_location2) {
            //generate at(location)
            Predicate at = new Predicate("at");
            at.addTerm(new NumberTermImpl(2));
            System.out.println("[ENV]  -> Percept generated: " + at);
            beliefs.add(at);
        }

        if (reached_location3) {
            //generate at(location)
            Predicate at = new Predicate("at");
            at.addTerm(new NumberTermImpl(3));
            System.out.println("[ENV]  -> Percept generated: " + at);
            beliefs.add(at);
        }

        // Obstacle percept
        if (tooClose) {
            beliefs.add(new Predicate("too_close"));
            System.out.println("[ENV]  -> Percept generated: too_close");
        }


        //System.out.println(beliefs);
        return beliefs;
    }


    @Override
    public Set<Message> generate_messages() {
        return new HashSet<>();
    }
}

