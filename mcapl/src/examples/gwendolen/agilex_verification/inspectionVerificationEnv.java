package gwendolen.agilex_verification;

import java.util.HashSet;
import java.util.Set;

import ail.syntax.Message;
import ail.syntax.Predicate;
import ail.syntax.NumberTermImpl;
import gwendolen.mas.VerificationofAutonomousSystemsEnvironment;

public class inspectionVerificationEnv
        extends VerificationofAutonomousSystemsEnvironment {



    @Override
    public Set<Predicate> generate_percepts() {

        Set<Predicate> beliefs = new HashSet<Predicate>();

        // Nondeterministic environment conditions
        boolean tooClose = random_bool_generator.nextBoolean();
        boolean reached_location = random_bool_generator.nextBoolean();
        int at_location = random_int_generator.nextInt(4);

        System.out.println("[ENV] Current target waypoint: " + at_location);
        System.out.println("[ENV] too_close = " + tooClose);

        // Obstacle percept
        if (tooClose) {
            beliefs.add(new Predicate("too_close"));
            System.out.println("[ENV]  -> Percept generated: too_close");
        }

        if (reached_location) {
            //generate at(X,Y)
            Predicate at = new Predicate("at");
            if (at_location == 0){
                at.addTerm(new NumberTermImpl(2.3));
                at.addTerm(new NumberTermImpl(-1.11));
                beliefs.add(at);
                System.out.println("[ENV]  -> Percept generated: " + at);
            } else if (at_location == 1){
                at.addTerm(new NumberTermImpl(2.3));
                at.addTerm(new NumberTermImpl(-1.11));
                beliefs.add(at);
                System.out.println("[ENV]  -> Percept generated: " + at);
            } else if (at_location == 2){
                at.addTerm(new NumberTermImpl(-3.0));
                at.addTerm(new NumberTermImpl(-1.5));
                beliefs.add(at);
                System.out.println("[ENV]  -> Percept generated: " + at);
            } else if (at_location == 3) {
                at.addTerm(new NumberTermImpl(2.3));
                at.addTerm(new NumberTermImpl(-1.11));
                beliefs.add(at);
                System.out.println("[ENV]  -> Percept generated: " + at);
            }
        }


        return beliefs;
    }

    @Override
    public Set<Message> generate_messages() {
        return new HashSet<>();
    }
}

