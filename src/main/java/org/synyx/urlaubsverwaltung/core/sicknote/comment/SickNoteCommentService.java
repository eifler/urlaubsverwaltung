package org.synyx.urlaubsverwaltung.core.sicknote.comment;

import com.google.common.base.Optional;

import org.synyx.urlaubsverwaltung.core.person.Person;
import org.synyx.urlaubsverwaltung.core.sicknote.SickNote;

import java.util.List;


/**
 * Service for handling {@link SickNoteComment}s.
 *
 * @author  Aljona Murygina - murygina@synyx.de
 */
public interface SickNoteCommentService {

    /**
     * Creates a comment for the given sick note with the given status. The given person defines the author of the
     * comment.
     *
     * @param  status  describes the lifecycle status of the sick note that will be saved in the comment
     * @param  text  of the comment (is optional)
     * @param  author  of the comment
     *
     * @return  the created comment
     */
    SickNoteComment create(SickNoteStatus status, Optional<String> text, Person author);


    /**
     * Gets all comments for the given sick note.
     *
     * @param  sickNote  to get the comments for
     *
     * @return  all comments for the given sick note.
     */
    List<SickNoteComment> getCommentsBySickNote(SickNote sickNote);
}
