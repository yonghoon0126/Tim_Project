package com.tim.controller;

import com.tim.controller.board.BoardCheckPassAction;
import com.tim.controller.board.BoardCheckPassFormAction;
import com.tim.controller.board.BoardDeleteAction;
import com.tim.controller.board.BoardListAction;
import com.tim.controller.board.BoardUpdateAction;
import com.tim.controller.board.BoardUpdateFormAction;
import com.tim.controller.board.BoardViewAction;
import com.tim.controller.board.BoardWriteAction;
import com.tim.controller.board.BoardWriteFormAction;
import com.tim.controller.menu.MnDeleteAction;
import com.tim.controller.menu.MnInsertAction;
import com.tim.controller.menu.MnInsertFormAction;
import com.tim.controller.menu.MnResListAction;
import com.tim.controller.menu.MnResMenuAction;
import com.tim.controller.menu.MnResPicAction;
import com.tim.controller.menu.MnResPicFormAction;
import com.tim.controller.menu.MnResViewAction;
import com.tim.controller.menu.MnSearchAction;
import com.tim.controller.reserve.RevAddAction;
import com.tim.controller.reserve.RevAddFormAction;
import com.tim.controller.reserve.RevConDeleteAction;
import com.tim.controller.reserve.RevConListAction;
import com.tim.controller.reserve.RevOwDeleteAction;
import com.tim.controller.reserve.RevOwListAction;
import com.tim.controller.reserve.RevSuccessAction;
import com.tim.controller.user.ConIdCheckFormAction;
import com.tim.controller.user.ConJoinAction;
import com.tim.controller.user.ConJoinFormAction;
import com.tim.controller.user.ConLoginAction;
import com.tim.controller.user.ConLoginFormAction;
import com.tim.controller.user.ConMainAction;
import com.tim.controller.user.ConNameCheckFormAction;
import com.tim.controller.user.ConUpdateAction;
import com.tim.controller.user.ConUpdateFormAction;
import com.tim.controller.user.JoinSelectAction;
import com.tim.controller.user.LogoutAction;
import com.tim.controller.user.MainSelectAction;
import com.tim.controller.user.OwIdCheckFormAction;
import com.tim.controller.user.OwJoinAction;
import com.tim.controller.user.OwJoinFormAction;
import com.tim.controller.user.OwLoginAction;
import com.tim.controller.user.OwLoginFormAction;
import com.tim.controller.user.OwMainAction;
import com.tim.controller.user.OwNameCheckFormAction;
import com.tim.controller.user.OwUpdateAction;
import com.tim.controller.user.OwUpdateFormAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;

		if (command.equals("main")) {
			action = new MainSelectAction();

		} else if (command.equals("join_select")) {
			action = new JoinSelectAction();

		} else if (command.equals("con_join_form")) {
			action = new ConJoinFormAction();

		} else if (command.equals("ow_join_form")) {
			action = new OwJoinFormAction();

		} else if (command.equals("con_login")) {
			action = new ConLoginAction();

		} else if (command.equals("ow_login")) {
			action = new OwLoginAction();

		} else if (command.equals("con_login_form")) {
			action = new ConLoginFormAction();

		} else if (command.equals("ow_login_form")) {
			action = new OwLoginFormAction();

		} else if (command.equals("con_id_check_form")) {
			action = new ConIdCheckFormAction();

		} else if (command.equals("ow_id_check_form")) {
			action = new OwIdCheckFormAction();

		} else if (command.equals("con_name_check_form")) {
			action = new ConNameCheckFormAction();

		} else if (command.equals("ow_name_check_form")) {
			action = new OwNameCheckFormAction();

		} else if (command.equals("con_join")) {
			action = new ConJoinAction();

		} else if (command.equals("ow_join")) {
			action = new OwJoinAction();

		} else if (command.equals("con_main")) {
			action = new ConMainAction();

		} else if (command.equals("ow_main")) {
			action = new OwMainAction();

		} else if (command.equals("logout")) {
			action = new LogoutAction();

		} else if (command.equals("con_update_form")) {
			action = new ConUpdateFormAction();

		} else if (command.equals("ow_update_form")) {
			action = new OwUpdateFormAction();

		} else if (command.equals("con_update")) {
			action = new ConUpdateAction();

		} else if (command.equals("ow_update")) {
			action = new OwUpdateAction();

			// 예약
		} else if (command.equals("reserve_add")) {
			action = new RevAddAction();
		} else if (command.equals("reserve_success")) {
			action = new RevSuccessAction();
		} else if (command.equals("reserve_con_list")) {
			action = new RevConListAction();
		} else if (command.equals("reserve_con_delete")) {
			action = new RevConDeleteAction();
		} else if (command.equals("reserve_ow_delete")) {
			action = new RevOwDeleteAction();
		} else if (command.equals("reserve_ow_list")) {
			action = new RevOwListAction();
		} else if (command.equals("reserve_add_form")) {
			action = new RevAddFormAction();
		} else if (command.equals("reserve_update")) {
			// action = new RevUpdateAction();

			// 보드
		} else if (command.equals("board_list")) {
			action = new BoardListAction();

		} else if (command.equals("board_write_form")) {
			action = new BoardWriteFormAction();

		} else if (command.equals("board_write")) {
			action = new BoardWriteAction();

		} else if (command.equals("board_view")) {
			action = new BoardViewAction();

		} else if (command.equals("board_check_pass_form")) {
			action = new BoardCheckPassFormAction();

		} else if (command.equals("board_check_pass")) {
			action = new BoardCheckPassAction();

		} else if (command.equals("board_update_form")) {
			action = new BoardUpdateFormAction();

		} else if (command.equals("board_update")) {
			action = new BoardUpdateAction();

		} else if (command.equals("board_delete")) {
			action = new BoardDeleteAction();
		}

		// 메뉴, 가게
		else if (command.equals("mn_res_list")) {
			action = new MnResListAction();

		} else if (command.equals("mn_res_view")) {
			action = new MnResViewAction();

		} else if (command.equals("mn_res_menu")) {
			action = new MnResMenuAction();

		} else if (command.equals("mn_insertForm")) {
			action = new MnInsertFormAction();

		} else if (command.equals("mn_insert")) {
			action = new MnInsertAction();

		}else if (command.equals("mn_search")) {
			action = new MnSearchAction();

		}else if (command.equals("mn_delete")) {
			action = new MnDeleteAction();

		}else if (command.equals("mn_respicForm")) {
			action = new MnResPicFormAction();

		}else if (command.equals("mn_respic")) {
			action = new MnResPicAction();

		}

		return action;

	}

}
