protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    EntityManager em = DBUtil.createEntityManager();

    List<Tasks> tasks = em.createNamedQuery("getAlltasks", Tasks.class).getResultList();

    em.close();

    request.setAttribute("tasks", tsaks);

    RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/tasks/index.jsp");
    rd.forward(request, response);
}