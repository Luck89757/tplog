<?php

namespace app\index\controller;

class Index extends Base
{
    public function index()
    {
        $where = [];
        $catename = null;
        if (input('?id')) {
            $where = [
                'cateid' => input('id')
            ];
            $catename = model('Cate')->where('id', input('id'))->value('catename');
        }
        $articles = model('Article')->where($where)->order(['create_time' => 'desc'])->paginate(5, false, ['query' => $where]);
        $viewData = [
            'catename' => $catename,
            'articles' => $articles
        ];
        $this->assign($viewData);
        return view();
    }

    public function login()
    {
        if (request()->isAjax()) {
            $data = [
                'username' => input('post.username'),
                'password' => input('post.password'),
                'verify' => input('post.verify')
            ];
            $result = model('Member')->login($data);
            if ($result == 1) {
                $this->success('登录成功！');
            }else {
                $this->error($result);
            }
        }
        return view();
    }
}
