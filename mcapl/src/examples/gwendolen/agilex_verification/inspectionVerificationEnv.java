package gwendolen.agilex_verification;

import java.util.HashSet;
import java.util.Set;
import ail.syntax.*;

import ail.syntax.Literal;
import ail.syntax.Message;
import ail.syntax.Predicate;
import ail.syntax.VarTerm;
import gwendolen.mas.VerificationofAutonomousSystemsEnvironment;


public class inspectionVerificationEnv extends VerificationofAutonomousSystemsEnvironment {

    @Override
    public Set<Predicate> generate_percepts() {
        Set<Predicate> beliefs = new HashSet<Predicate>();

        // Random boolean to simulate "too close"
        boolean currentlyTooClose = random_bool_generator.nextBoolean();

        // Array of possible location coordinates
        float[][] locationCoordinates = {
                {0.0f, 0.0f, 0.0f},
                {-1.11f, 0.0f, 0.0f},
                {-3.0f, -1.5f, 0.0f},
                {2.61f, 2.43f, 0.0f}
        };

        // Pick a random visited point
        int idx = random_int_generator.nextInt(4);
        float[] visitedPoint = locationCoordinates[idx];

        // Add "too_close" percept if applicable
        if (currentlyTooClose) {
            beliefs.add(new Predicate("too_close"));
        }

        // Add the visited point
        if (visitedPoint != null) {
            Predicate safeLit = new Predicate("at");
            safeLit.addTerm(new NumberTermImpl(visitedPoint[0]));
            safeLit.addTerm(new NumberTermImpl(visitedPoint[1]));
            safeLit.addTerm(new NumberTermImpl(visitedPoint[2]));
            beliefs.add(safeLit);
        }

        return beliefs;
    }

    @Override
    public Set<Message> generate_messages() {
        return new HashSet<Message>();
    }
}

