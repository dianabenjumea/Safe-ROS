package gwendolen.agilex_verification;

import ail.syntax.Message;
import ail.syntax.Predicate;
import gwendolen.mas.VerificationofAutonomousSystemsEnvironment;

import java.util.HashSet;
import java.util.Set;

public class inspectionVerificationEnv extends VerificationofAutonomousSystemsEnvironment {

    @Override
    public Set<Predicate> generate_percepts() {
        Set<Predicate> beliefs = new HashSet<Predicate>();

        boolean stop_moving = random_bool_generator.nextBoolean();
        if (stop_moving) {
            Predicate stopped = new Predicate("stopped");

            beliefs.add(stopped);
        }
        return beliefs;
    }

    @Override
    public Set<Message> generate_messages() {
        return new HashSet<Message>();
    }
}
