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
        boolean tooClose = random_bool_generator.nextBoolean();
        //boolean tooClose = false;
        boolean reached_location1 = random_bool_generator.nextBoolean();
        boolean reached_location2 = random_bool_generator.nextBoolean();
        boolean reached_location3 = random_bool_generator.nextBoolean();
        boolean reached_location4 = random_bool_generator.nextBoolean();
        //boolean reached_location3 = false;
        //boolean reached_location4 = false;

        System.out.println("[ENV] too_close = " + tooClose);

        // Obstacle percept
        if (tooClose) {
            beliefs.add(new Predicate("too_close"));
            System.out.println("[ENV]  -> Percept generated: too_close");
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

        if (reached_location4) {
            //generate at(location)
            Predicate at = new Predicate("at");
            at.addTerm(new NumberTermImpl(4));
            System.out.println("[ENV]  -> Percept generated: " + at);
            beliefs.add(at);
        }


        //System.out.println(beliefs);
        return beliefs;
    }


    @Override
    public Set<Message> generate_messages() {
        return new HashSet<>();
    }
}

