package pl.coderslab.service;

import org.springframework.stereotype.Service;
import pl.coderslab.entity.Comment;
import pl.coderslab.repository.CommentRepository;

import javax.transaction.Transactional;

@Service
@Transactional
public class CommentService {

    private CommentRepository commentRepository;

    public CommentService(CommentRepository commentRepository) {
        this.commentRepository = commentRepository;
    }

    public Comment findComment(Long id) {
        return commentRepository.findOne(id);
    }

    public void save(Comment comment) {
        commentRepository.save(comment);
    }

}
