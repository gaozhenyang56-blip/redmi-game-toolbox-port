.class public Ls8/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls8/h$j;
    }
.end annotation


# instance fields
.field private A:Landroid/animation/AnimatorSet;

.field private volatile B:Landroid/app/AppOpsManager;

.field private final C:Ljava/lang/Runnable;

.field private final D:Ljava/lang/Runnable;

.field private final E:Ljava/lang/Runnable;

.field private final F:Landroid/content/BroadcastReceiver;

.field private final G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/n;",
            ">;"
        }
    .end annotation
.end field

.field private final H:Ljava/lang/Runnable;

.field private final I:Ljava/lang/Runnable;

.field private final a:Lcom/miui/gamebooster/service/DockWindowManagerService;

.field private final b:Lo7/a;

.field private final c:Landroid/content/Context;

.field private d:Lcom/miui/dock/sidebar/j;

.field private e:Lcom/miui/dock/sidebar/j;

.field private f:Lmiuix/popupwidget/widget/GuidePopupWindow;

.field private g:Lx5/q;

.field private h:Landroid/view/WindowManager$LayoutParams;

.field private i:Landroid/view/WindowManager;

.field private j:Ld7/a0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/miui/dock/sidebar/j;

.field private l:Lcom/miui/dock/drag/DockShortCutMenu;

.field private m:Z

.field private final n:Landroid/os/Handler;

.field private volatile o:Z

.field private p:Z

.field private q:Ls8/h$j;

.field private r:Z

.field private s:Landroid/view/View;

.field private t:I

.field private u:J

.field private v:Ljava/lang/String;

.field private w:J

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/service/DockWindowManagerService;Landroid/os/Handler;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls8/h;->m:Z

    const-string v1, "tool_box_show_state"

    iput-object v1, p0, Ls8/h;->v:Ljava/lang/String;

    new-instance v1, Ls8/h$a;

    invoke-direct {v1, p0}, Ls8/h$a;-><init>(Ls8/h;)V

    iput-object v1, p0, Ls8/h;->C:Ljava/lang/Runnable;

    new-instance v1, Ls8/a;

    invoke-direct {v1, p0}, Ls8/a;-><init>(Ls8/h;)V

    iput-object v1, p0, Ls8/h;->D:Ljava/lang/Runnable;

    new-instance v1, Ls8/h$b;

    invoke-direct {v1, p0}, Ls8/h$b;-><init>(Ls8/h;)V

    iput-object v1, p0, Ls8/h;->E:Ljava/lang/Runnable;

    new-instance v1, Ls8/h$c;

    invoke-direct {v1, p0}, Ls8/h$c;-><init>(Ls8/h;)V

    iput-object v1, p0, Ls8/h;->F:Landroid/content/BroadcastReceiver;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ls8/h;->G:Ljava/util/List;

    invoke-static {}, La8/g0;->R()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lf7/b;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget-object v3, Ln6/c;->a:Ln6/c;

    const v4, 0x7f080648

    invoke-direct {v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/c;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget-object v3, Ln6/c;->b:Ln6/c;

    const v4, 0x7f08063e

    invoke-direct {v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/c;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget-object v3, Ln6/c;->g:Ln6/c;

    const v4, 0x7f080642

    invoke-direct {v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/c;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget-object v3, Ln6/c;->h:Ln6/c;

    const v4, 0x7f080644

    invoke-direct {v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/c;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget-object v3, Ln6/c;->i:Ln6/c;

    const v4, 0x7f080624

    invoke-direct {v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/c;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget-object v3, Ln6/c;->k:Ln6/c;

    const v4, 0x7f080631

    invoke-direct {v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/c;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ls8/h$e;

    invoke-direct {v1, p0}, Ls8/h$e;-><init>(Ls8/h;)V

    iput-object v1, p0, Ls8/h;->H:Ljava/lang/Runnable;

    new-instance v1, Ls8/b;

    invoke-direct {v1, p0}, Ls8/b;-><init>(Ls8/h;)V

    iput-object v1, p0, Ls8/h;->I:Ljava/lang/Runnable;

    iput-object p1, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->o0()Lo7/a;

    move-result-object v1

    iput-object v1, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ls8/h;->c:Landroid/content/Context;

    iput-object p2, p0, Ls8/h;->n:Landroid/os/Handler;

    invoke-static {}, Lc5/a;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lk5/a;->d(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Ls8/h;->x:Z

    invoke-direct {p0}, Ls8/h;->f0()V

    invoke-static {}, Lk5/a;->i()Z

    move-result p2

    iput-boolean p2, p0, Ls8/h;->y:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Ls8/h;->v:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Ls8/h;->t:I

    return-void
.end method

.method private A0()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "remove_gameturbo_view"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v1}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v1

    iget-object v2, p0, Ls8/h;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lr0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public static B(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDensity: context dpi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " system dpi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DockWindowManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Lmiuix/autodensity/AutoDensityConfig;->setUpdateSystemRes(Z)V

    :cond_0
    return-void
.end method

.method private C()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearSidebarBounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sidebar_bounds"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private C0()V
    .locals 3

    iget-object v0, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "GAMEBOX_WINDOW_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lr0/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method private D(Lcom/miui/dock/sidebar/j;)V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createDockView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->F()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v4

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v2, Ls8/e;

    invoke-direct {v2, p0, p1}, Ls8/e;-><init>(Ls8/h;Lcom/miui/dock/sidebar/j;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0}, Ls8/h;->e0(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object v10

    iput-object p1, p0, Ls8/h;->k:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutDirection(I)V

    invoke-direct {p0}, Ls8/h;->R()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->n0()I

    move-result v6

    iget-object v7, p0, Ls8/h;->b:Lo7/a;

    iget-object v2, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->q0()Z

    move-result v2

    const/4 v12, 0x1

    if-nez v2, :cond_2

    invoke-static {v5}, Ld7/l;->B(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v8, v11

    goto :goto_1

    :cond_2
    :goto_0
    move v8, v12

    :goto_1
    invoke-virtual {p0}, Ls8/h;->U()Lcom/miui/gamebooster/service/DockWindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->B0()Z

    move-result v9

    move-object v2, v10

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->r(Lcom/miui/dock/sidebar/j;ZLjava/lang/String;ILo7/a;ZZ)V

    invoke-static {}, La8/g0;->O()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v2}, Lo7/a;->f()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_3
    invoke-static {}, Lj8/s;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v2}, Lo7/a;->j()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    invoke-static {}, Lx5/p;->H0()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v2}, Lo7/a;->d()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    iget-object v2, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v2}, Lo7/a;->e()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    invoke-virtual {v10}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->v()V

    goto :goto_2

    :cond_7
    invoke-static {}, La8/k2;->A()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v10, v12}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_8
    invoke-direct {p0, p1}, Ls8/h;->c1(Lcom/miui/dock/sidebar/j;)V

    :goto_2
    invoke-virtual {p1, v12}, Lcom/miui/dock/sidebar/j;->T(Z)V

    const v2, 0x7f0b0a71

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/dock/drag/DockShortCutMenu;

    iput-object v0, p0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    iput-boolean v11, p0, Ls8/h;->m:Z

    new-instance v2, Ls8/f;

    invoke-direct {v2, p0, p1}, Ls8/f;-><init>(Ls8/h;Lcom/miui/dock/sidebar/j;)V

    invoke-virtual {v0, v2}, Lcom/miui/dock/drag/DockShortCutMenu;->setOnShortcutClickListener(Lcom/miui/dock/drag/a$a;)V

    iget-boolean v0, p0, Ls8/h;->y:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, La8/i1;->d(Landroid/view/WindowManager$LayoutParams;)V

    const-string v0, "ToolBox set miuiFlag"

    invoke-static {v1, v0}, Lbh/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-static {p1, v12}, Lm5/g;->a(Lcom/miui/dock/sidebar/j;Z)V

    iget-object p1, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {p1}, Lo7/a;->e()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Lof/e;->h()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {p1, v11}, Lk5/a;->E(Landroid/content/Context;Z)V

    invoke-static {v11}, Lof/e;->p(Z)V

    goto :goto_3

    :cond_a
    iget-object p1, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {p1}, Lo7/a;->j()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lof/e;->i()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {p1, v11}, Li8/c;->r0(Landroid/content/Context;Z)V

    invoke-static {v11}, Lof/e;->q(Z)V

    :cond_b
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ls8/h;->w:J

    return-void
.end method

.method private G()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d2

    :goto_0
    const/16 v2, 0x7f6
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x800033

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v2, 0x50728

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-object v0
.end method

.method private H(Ljava/lang/String;Z)Lcom/miui/dock/sidebar/j;
    .locals 2

    new-instance v0, Lcom/miui/dock/sidebar/j;

    iget-object v1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0, p2}, Lcom/miui/dock/sidebar/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ls8/h;Z)V

    return-object v0
.end method

.method public static I0(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "remove_gameturbo_view"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lr0/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method private L0(Lcom/miui/dock/sidebar/j;Z)V
    .locals 11

    invoke-virtual {p0}, Ls8/h;->M0()V

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object v5

    iget-object v0, p0, Ls8/h;->i:Landroid/view/WindowManager;

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTurboLayout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "DockWindowManager"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->o()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v8, p0, Ls8/h;->w:J

    sub-long/2addr v0, v8

    invoke-direct {p0, p1, v0, v1}, Ls8/h;->r1(Lcom/miui/dock/sidebar/j;J)V

    :cond_0
    invoke-virtual {p0}, Ls8/h;->j0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ls8/h;->K()V

    :cond_1
    const-string v0, "removeTurboLayout"

    invoke-direct {p0, v6, v0}, Ls8/h;->d0(ZLjava/lang/String;)V

    invoke-static {p1, v5}, Lm5/g;->j(Lcom/miui/dock/sidebar/j;Landroid/view/View;)V

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    new-instance v10, Ls8/d;

    move-object v0, v10

    move-object v1, p0

    move v2, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Ls8/d;-><init>(Ls8/h;ZLcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Lcom/miui/dock/sidebar/j;Landroid/view/View;)V

    invoke-static {p1, v6, v8, v9, v10}, Lcom/miui/dock/sidebar/a;->k(Lcom/miui/dock/sidebar/j;ZFFLjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1, v6}, Lcom/miui/dock/sidebar/j;->T(Z)V

    :cond_2
    invoke-static {}, Ld7/l;->x()Ld7/l;

    move-result-object p1

    invoke-virtual {p1}, Ld7/l;->L()V

    iget-object p1, p0, Ls8/h;->i:Landroid/view/WindowManager;

    invoke-static {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->m(Landroid/view/WindowManager;)V

    invoke-virtual {p0, v6}, Ls8/h;->U0(I)V

    return-void
.end method

.method private M(Lcom/miui/dock/sidebar/j;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doDockContainerClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ls8/h;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ls8/h;->K()V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Ls8/h;->L0(Lcom/miui/dock/sidebar/j;Z)V

    invoke-static {}, La8/a0;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {p1}, La8/k2;->L(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ls8/h;->j1()V

    goto :goto_0

    :cond_1
    invoke-static {}, La8/z;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lk5/a;->q()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {p1}, La8/k2;->L(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {p1}, Lo7/a;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ls8/h;->j1()V

    const/4 p1, 0x0

    invoke-static {p1}, Lk5/a;->w(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private N(Lcom/miui/dock/sidebar/j;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getDockContainerWidth()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dockToEdge: left = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " dockInitMarginX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DockWindowManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    int-to-float p2, v0

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p2, v0}, Lcom/miui/dock/sidebar/a;->j(Lcom/miui/dock/sidebar/j;FF)V

    return-void
.end method

.method private O()I
    .locals 4

    iget-object v0, p0, Ls8/h;->s:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, La8/k2;->u()I

    move-result v0

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Ls8/h;->s:Landroid/view/View;

    invoke-virtual {v2, v0, v0}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Ls8/h;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071e8f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071d71

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private P(Lcom/miui/dock/sidebar/j;Z)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getLayoutParamsByPosition\uff0c isLeft = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DockWindowManager"

    invoke-static {v0, p2}, Lb8/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v0, p0, Ls8/h;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/16 v0, 0x7f6

    const/16 v0, 0x7f6
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz p1, :cond_0

    const v0, 0x800003

    goto :goto_0

    :cond_0
    const v0, 0x800005

    :goto_0
    or-int/lit8 v0, v0, 0x30

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz p1, :cond_1

    const p1, 0x7f1307f3

    goto :goto_1

    :cond_1
    const p1, 0x7f1307f5

    :goto_1
    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 p1, 0x0

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Ls8/h;->Y()I

    move-result p1

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071a90

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071a83

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-boolean p1, p0, Ls8/h;->y:Z

    if-eqz p1, :cond_2

    invoke-static {p2}, La8/i1;->d(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    return-object p2
.end method

.method private P0()V
    .locals 3

    iget-object v0, p0, Ls8/h;->i:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ls8/h;->s:Landroid/view/View;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls8/h;->r:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ls8/h;->s:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeVideoTimingView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Ls8/h;->n:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ls8/h;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private Q0()V
    .locals 2

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private R()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m0()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private S(I)Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Ls8/h;->i:Landroid/view/WindowManager;

    invoke-static {v1}, La8/k2;->m(Landroid/view/WindowManager;)I

    move-result v1

    iget-object v2, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/j;->v()Lcom/miui/dock/sidebar/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/c;->k()I

    move-result v3

    invoke-static {}, Lk5/a;->b()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    iput v5, v0, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iput v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    invoke-virtual {v2}, Lcom/miui/dock/sidebar/c;->j()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/c;->h()I

    move-result p1

    iget-object v1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v1}, La8/k2;->L(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071a83

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v1, p1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v5, v1, 0x2

    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    add-int/2addr v1, v5

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private T(Lcom/miui/dock/sidebar/j;Z)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result p1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v1, p0, Ls8/h;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/16 v1, 0x7f6

    const/16 v1, 0x7f6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x338

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/k2;->F(Landroid/view/WindowManager$LayoutParams;Z)V

    if-eqz p1, :cond_0

    const v1, 0x800003

    goto :goto_0

    :cond_0
    const v1, 0x800005

    :goto_0
    or-int/lit8 v1, v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz p1, :cond_1

    const v1, 0x7f1307f4

    goto :goto_1

    :cond_1
    const v1, 0x7f1307f6

    :goto_1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v1, p1}, Lm5/g;->d(Landroid/content/Context;Z)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Ls8/h;->Y()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPanelViewLpByPosition: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " y = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DockWindowManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private V(Lcom/miui/dock/sidebar/j;)I
    .locals 3

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getDockContainerWidth()I

    move-result v0

    iget-object v1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v1}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v1}, La8/k2;->p(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v1}, La8/k2;->q(Landroid/content/Context;)I

    move-result v1

    :goto_0
    iget-object v2, p0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, La8/k2;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    invoke-static {}, La8/k2;->A()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method private W(ILandroid/view/View;)I
    .locals 2

    iget-object v0, p0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Ls8/h;->i:Landroid/view/WindowManager;

    invoke-static {v1}, La8/k2;->k(Landroid/view/WindowManager;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object p1, p0, Ls8/h;->i:Landroid/view/WindowManager;

    invoke-static {p1}, La8/k2;->k(Landroid/view/WindowManager;)I

    move-result p1

    iget-object p2, p0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    :cond_0
    iget-object p2, p0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    :goto_0
    sub-int/2addr p1, p2

    return p1

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iget-object p2, p0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    goto :goto_0
.end method

.method private X0(Lg8/a;)V
    .locals 1

    iget-object v0, p0, Ls8/h;->k:Lcom/miui/dock/sidebar/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->s(Lg8/a;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Ls8/h;)V
    .locals 0

    invoke-direct {p0}, Ls8/h;->q0()V

    return-void
.end method

.method private a0(Z)V
    .locals 1

    iget-object v0, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Ls8/h;)V
    .locals 0

    invoke-direct {p0}, Ls8/h;->P0()V

    return-void
.end method

.method public static synthetic c(Ls8/h;Lcom/miui/dock/sidebar/j;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Ls8/h;->r0(Lcom/miui/dock/sidebar/j;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private c1(Lcom/miui/dock/sidebar/j;)V
    .locals 6

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01b1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b049a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iget-object v2, p0, Ls8/h;->c:Landroid/content/Context;

    const v3, 0x7f08063c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lt5/j;

    iget-object v3, p0, Ls8/h;->c:Landroid/content/Context;

    iget-object v4, p0, Ls8/h;->G:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lt5/j;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v3, p0, Ls8/h;->G:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Ls8/h;->G:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v5, v4

    if-le v5, v4, :cond_1

    const v4, 0x7f070eb5

    goto :goto_0

    :cond_1
    const v4, 0x7f070eb4

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    new-instance v3, Ls8/g;

    invoke-direct {v3, p0, p1}, Ls8/g;-><init>(Ls8/h;Lcom/miui/dock/sidebar/j;)V

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->g(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public static synthetic d(Ls8/h;ZLcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Lcom/miui/dock/sidebar/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ls8/h;->p0(ZLcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Lcom/miui/dock/sidebar/j;Landroid/view/View;)V

    return-void
.end method

.method private d0(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideOrShowSidebarWithAnimation: isShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " caller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DockWindowManager"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->M()V

    iget-object p2, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->l()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->S()V

    :goto_0
    iget-object p2, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object p2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object p2

    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, p1}, Ls8/h;->a0(Z)V

    return-void
.end method

.method private d1(Z)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    iget-object v3, v0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-instance v3, Lmiuix/animation/controller/AnimState;

    invoke-direct {v3}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v5, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide v6, 0x3fd3333340000000L    # 0.30000001192092896

    if-eqz p1, :cond_0

    move-wide v8, v6

    goto :goto_0

    :cond_0
    iget-object v8, v0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v8

    float-to-double v8, v8

    :goto_0
    invoke-virtual {v3, v5, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    sget-object v8, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    if-eqz p1, :cond_1

    move-wide v9, v6

    goto :goto_1

    :cond_1
    iget-object v9, v0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v9

    float-to-double v9, v9

    :goto_1
    invoke-virtual {v3, v8, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    sget-object v9, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v6, v0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v6

    float-to-double v6, v6

    :goto_2
    invoke-virtual {v3, v9, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    sget-object v6, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v6, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    new-instance v7, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v12, -0x2

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_0

    invoke-virtual {v7, v12, v13}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    aput-object v7, v1, v4

    invoke-interface {v2, v3, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-instance v2, Lmiuix/animation/controller/AnimState;

    invoke-direct {v2}, Lmiuix/animation/controller/AnimState;-><init>()V

    const-wide/16 v12, 0x0

    if-eqz p1, :cond_3

    move-wide v14, v10

    goto :goto_3

    :cond_3
    move-wide v14, v12

    :goto_3
    invoke-virtual {v2, v5, v14, v15}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    if-eqz p1, :cond_4

    move-wide v14, v10

    goto :goto_4

    :cond_4
    move-wide v14, v12

    :goto_4
    invoke-virtual {v2, v8, v14, v15}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    if-eqz p1, :cond_5

    move-wide v7, v10

    goto :goto_5

    :cond_5
    move-wide v7, v12

    :goto_5
    invoke-virtual {v2, v9, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    move-wide v10, v12

    :goto_6
    invoke-virtual {v2, v6, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    new-array v3, v4, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v2, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method public static synthetic e(Ls8/h;Lcom/miui/dock/sidebar/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ls8/h;->m0(Lcom/miui/dock/sidebar/j;Landroid/view/View;)V

    return-void
.end method

.method private e0(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static synthetic f(Ls8/h;)V
    .locals 0

    invoke-direct {p0}, Ls8/h;->o0()V

    return-void
.end method

.method private f0()V
    .locals 2

    invoke-direct {p0}, Ls8/h;->g0()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Ls8/h;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Ls8/h;->x1()V

    iget-object v0, p0, Ls8/h;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Ls8/h;->i:Landroid/view/WindowManager;

    return-void
.end method

.method public static synthetic g(Ls8/h;Lcom/miui/dock/sidebar/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ls8/h;->n0(Lcom/miui/dock/sidebar/j;Landroid/view/View;)V

    return-void
.end method

.method private g0()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x50328

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v0}, Ls8/y;->a(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    const/4 v1, 0x3

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_1

    :cond_0
    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v0}, La8/k2;->G(Landroid/view/WindowManager$LayoutParams;)V

    return-object v0
.end method

.method private g1()V
    .locals 4

    const-string v0, "DockWindowManager"

    const-string v1, "showOverLayPermissionDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ls8/h;->c:Landroid/content/Context;

    const-class v2, Lcom/miui/gamebooster/ui/OverLayPermissionDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Ls8/h;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, La8/k0;->w(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic h(Ls8/h;)Z
    .locals 0

    invoke-direct {p0}, Ls8/h;->i0()Z

    move-result p0

    return p0
.end method

.method private h0()Z
    .locals 1

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->F()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h1(Lcom/miui/dock/sidebar/j;)V
    .locals 4

    const-string v0, "DockWindowManager"

    const-string v1, "showShortCut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls8/h;->m:Z

    iget-object v1, p0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-direct {p0, v0}, Ls8/h;->d1(Z)V

    return-void
.end method

.method static synthetic i(Ls8/h;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Ls8/h;->D:Ljava/lang/Runnable;

    return-object p0
.end method

.method private i0()Z
    .locals 6

    const-string v0, "DockWindowManager"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Ls8/h;->B:Landroid/app/AppOpsManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Ls8/h;->c:Landroid/content/Context;

    const-string v3, "appops"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Ls8/h;->B:Landroid/app/AppOpsManager;

    :cond_0
    iget-object v2, p0, Ls8/h;->B:Landroid/app/AppOpsManager;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ls8/h;->B:Landroid/app/AppOpsManager;

    const/16 v3, 0x18

    iget-object v4, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Landroid/app/AppOpsManagerCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result v2

    sget-boolean v3, Luf/a;->a:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOverLayPermissionGranted mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Ls8/h;->c:Landroid/content/Context;

    const-string v4, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    move v1, v3

    :cond_3
    return v1

    :cond_4
    return v3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOpSystemAlertWindowMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1
.end method

.method static synthetic j(Ls8/h;)J
    .locals 2

    iget-wide v0, p0, Ls8/h;->w:J

    return-wide v0
.end method

.method static synthetic k(Ls8/h;Lcom/miui/dock/sidebar/j;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ls8/h;->r1(Lcom/miui/dock/sidebar/j;J)V

    return-void
.end method

.method static synthetic l(Ls8/h;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ls8/h;->d0(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic m(Ls8/h;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Ls8/h;->n:Landroid/os/Handler;

    return-object p0
.end method

.method private synthetic m0(Lcom/miui/dock/sidebar/j;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Ls8/h;->L(Lcom/miui/dock/sidebar/j;)V

    return-void
.end method

.method static synthetic n(Ls8/h;)Lo7/a;
    .locals 0

    iget-object p0, p0, Ls8/h;->b:Lo7/a;

    return-object p0
.end method

.method private synthetic n0(Lcom/miui/dock/sidebar/j;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Ls8/h;->m:Z

    invoke-virtual {p0, p1}, Ls8/h;->L(Lcom/miui/dock/sidebar/j;)V

    return-void
.end method

.method static synthetic o(Ls8/h;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Ls8/h;->c:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic o0()V
    .locals 2

    invoke-direct {p0}, Ls8/h;->g1()V

    invoke-virtual {p0}, Ls8/h;->H0()V

    const-string v0, "DockWindowManager"

    const-string v1, "show permission guide dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic p(Ls8/h;)Ld7/a0;
    .locals 0

    iget-object p0, p0, Ls8/h;->j:Ld7/a0;

    return-object p0
.end method

.method private synthetic p0(ZLcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Lcom/miui/dock/sidebar/j;Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeAllViews needMoveSidebar = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x0

    invoke-static {p3, p4, p2}, Lm5/g;->k(Lcom/miui/dock/sidebar/j;Landroid/view/View;Z)V

    invoke-static {p3, p2}, Lm5/g;->a(Lcom/miui/dock/sidebar/j;Z)V

    const/4 p2, 0x1

    const-string p4, "removeTurboLayout"

    invoke-direct {p0, p2, p4}, Ls8/h;->d0(ZLjava/lang/String;)V

    invoke-static {p3}, Lcom/miui/dock/sidebar/a;->g(Lcom/miui/dock/sidebar/j;)V

    invoke-virtual {p3}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/RegionSamplingImageView;->f()V

    invoke-static {}, Ld7/l;->x()Ld7/l;

    move-result-object p2

    invoke-virtual {p2}, Ld7/l;->L()V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ls8/h;->Y()I

    move-result p1

    invoke-virtual {p0, p1}, Ls8/h;->s0(I)V

    :cond_1
    return-void
.end method

.method private p1(J)V
    .locals 2

    iget-object v0, p0, Ls8/h;->b:Lo7/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lo7/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->T()Lx5/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lz5/a;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lx5/e;->s(JLjava/util/List;)V

    :cond_1
    return-void
.end method

.method static synthetic q(Ls8/h;Ld7/a0;)Ld7/a0;
    .locals 0

    iput-object p1, p0, Ls8/h;->j:Ld7/a0;

    return-object p1
.end method

.method private synthetic q0()V
    .locals 16

    move-object/from16 v8, p0

    iget-object v0, v8, Ls8/h;->b:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DockWindowManager"

    const-string v1, "already exit gamebooster mode. skip guide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Ld7/l;->x()Ld7/l;

    move-result-object v9

    iget-object v10, v8, Ls8/h;->c:Landroid/content/Context;

    iget-boolean v11, v8, Ls8/h;->o:Z

    iget-object v12, v8, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    iget-object v0, v8, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m0()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v8, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->n0()I

    move-result v14

    invoke-direct/range {p0 .. p0}, Ls8/h;->G()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    invoke-virtual/range {v9 .. v15}, Ld7/l;->W(Landroid/content/Context;ZLcom/miui/dock/sidebar/j;Ljava/lang/String;ILandroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x370

    const/16 v2, 0x230

    const/16 v3, 0x3e8

    const/high16 v4, 0x41500000    # 13.0f

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3f666666    # 0.9f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Ls8/h;->Z0(IIIFFFF)V

    return-void
.end method

.method private q1()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Ls8/h$i;

    invoke-direct {v1, p0}, Ls8/h$i;-><init>(Ls8/h;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic r(Ls8/h;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Ls8/h;->i:Landroid/view/WindowManager;

    return-object p0
.end method

.method private synthetic r0(Lcom/miui/dock/sidebar/j;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p2, p4}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/gamebooster/model/n;

    invoke-virtual {p0}, Ls8/h;->U()Lcom/miui/gamebooster/service/DockWindowManagerService;

    move-result-object p4

    invoke-virtual {p4}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m0()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Ls8/h;->U()Lcom/miui/gamebooster/service/DockWindowManagerService;

    move-result-object p5

    invoke-virtual {p5}, Lcom/miui/gamebooster/service/DockWindowManagerService;->n0()I

    move-result p5

    iget-object p6, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {p4, p5, p2, p6, p3}, La8/l0;->e(Ljava/lang/String;ILcom/miui/gamebooster/model/n;Landroid/content/Context;Landroid/view/View;)Z

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->l()Ln6/c;

    move-result-object p2

    sget-object p3, Ln6/c;->k:Ln6/c;

    if-eq p2, p3, :cond_0

    invoke-virtual {p0, p1}, Ls8/h;->K0(Lcom/miui/dock/sidebar/j;)V

    :cond_0
    return-void
.end method

.method private r1(Lcom/miui/dock/sidebar/j;J)V
    .locals 7

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getGameTurboLayout()Lcom/miui/gamebooster/windowmanager/newbox/c0;

    const/4 v5, 0x1

    iget-object p1, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m0()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {p1}, Lo7/a;->c()I

    move-result v2

    const-wide/16 v3, 0x3e8

    div-long/2addr p2, v3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const-string v0, "gameturbo_page_time"

    invoke-static/range {v0 .. v6}, Lcom/miui/gamebooster/utils/a$n;->J(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic s(Ls8/h;)Lcom/miui/dock/sidebar/j;
    .locals 0

    iget-object p0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    return-object p0
.end method

.method static synthetic t(Ls8/h;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Ls8/h;->A:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private t1()V
    .locals 2

    iget-object v0, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    iget-object v1, p0, Ls8/h;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lr0/a;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic u(Ls8/h;)V
    .locals 0

    invoke-direct {p0}, Ls8/h;->Q0()V

    return-void
.end method

.method private w()V
    .locals 4

    const-string v0, "main"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ls8/h;->H(Ljava/lang/String;Z)Lcom/miui/dock/sidebar/j;

    move-result-object v0

    iput-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    iget-object v2, p0, Ls8/h;->i:Landroid/view/WindowManager;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object v0

    iget-object v3, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-direct {p0, v3, v1}, Ls8/h;->P(Lcom/miui/dock/sidebar/j;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "assistant"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ls8/h;->H(Ljava/lang/String;Z)Lcom/miui/dock/sidebar/j;

    move-result-object v0

    iput-object v0, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    iget-object v2, p0, Ls8/h;->i:Landroid/view/WindowManager;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object v0

    iget-object v3, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    invoke-direct {p0, v3, v1}, Ls8/h;->P(Lcom/miui/dock/sidebar/j;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private x()V
    .locals 4

    iget-object v0, p0, Ls8/h;->i:Landroid/view/WindowManager;

    iget-object v1, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Ls8/h;->T(Lcom/miui/dock/sidebar/j;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Ls8/h;->i:Landroid/view/WindowManager;

    iget-object v1, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ls8/h;->T(Lcom/miui/dock/sidebar/j;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private x0(Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "l"

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "t"

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "r"

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "b"

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rect2Json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DockWindowManager"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private y()V
    .locals 3

    invoke-direct {p0}, Ls8/h;->w()V

    invoke-direct {p0}, Ls8/h;->x()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls8/h;->o:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSidebarView, isLocateInLeft = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManager"

    invoke-static {v1, v0}, Lb8/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/RegionSamplingImageView;->f()V

    iget-object v0, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->c()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->q1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v0

    invoke-static {v0, v1}, Ldb/i;->k(Landroid/view/View;I)V

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->M()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ldb/i;->k(Landroid/view/View;I)V

    :goto_0
    invoke-virtual {p0}, Ls8/h;->w1()V

    invoke-static {}, Lk5/a;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ls8/h;->j1()V

    invoke-static {v1}, Lk5/a;->D(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 2

    iget-object v0, p0, Ls8/h;->c:Landroid/content/Context;

    iget-object v1, p0, Ls8/h;->n:Landroid/os/Handler;

    invoke-static {v0, v1}, Ls8/u;->D(Landroid/content/Context;Landroid/os/Handler;)Ls8/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls8/u;->y(Z)V

    return-void
.end method

.method public B0(Lcom/miui/dock/sidebar/j;)V
    .locals 4

    const-string v0, "DockWindowManager"

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    invoke-static {v2}, La8/i1;->b(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->F()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Ls8/h;->i:Landroid/view/WindowManager;

    invoke-interface {v3, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is remove flag lp = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDockAdded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->F()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lbh/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeClickPassDown fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public D0()V
    .locals 2

    iget-object v0, p0, Ls8/h;->n:Landroid/os/Handler;

    iget-object v1, p0, Ls8/h;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lz6/a;->d()V

    return-void
.end method

.method public E()V
    .locals 3

    iget-object v0, p0, Ls8/h;->c:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-static {}, Ll8/b;->z()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v0}, La8/z;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->n0()I

    move-result v1

    invoke-static {v0, v1}, Lw6/i;->b(Ljava/lang/String;I)Lx6/b;

    move-result-object v0

    invoke-virtual {v0}, Lx6/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lv8/c;->g()Lv8/c;

    move-result-object v0

    iget-object v1, p0, Ls8/h;->c:Landroid/content/Context;

    iget-object v2, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lv8/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public E0()V
    .locals 1

    invoke-static {}, Ld7/l;->x()Ld7/l;

    move-result-object v0

    invoke-virtual {v0}, Ld7/l;->L()V

    invoke-static {}, Ld7/l;->x()Ld7/l;

    move-result-object v0

    invoke-virtual {v0}, Ld7/l;->I()V

    iget-object v0, p0, Ls8/h;->i:Landroid/view/WindowManager;

    invoke-static {v0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->m(Landroid/view/WindowManager;)V

    return-void
.end method

.method public F()V
    .locals 4

    iget-object v0, p0, Ls8/h;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {v0}, La8/z;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls8/h;->n:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La8/o0;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "game_time_float_window_tag"

    invoke-static {v0}, Ll8/b;->A(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ls8/h;->n:Landroid/os/Handler;

    iget-object v1, p0, Ls8/h;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ls8/h;->n:Landroid/os/Handler;

    iget-object v1, p0, Ls8/h;->E:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public F0(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ls8/h;->i:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public G0()V
    .locals 1

    invoke-virtual {p0}, Ls8/h;->H0()V

    iget-object v0, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iget-boolean v0, v0, Lcom/miui/gamebooster/service/DockWindowManagerService;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ls8/h;->i1()V

    :cond_0
    return-void
.end method

.method public H0()V
    .locals 2

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    const-string v1, "DockWindowManager"

    if-eqz v0, :cond_0

    const-string v0, "removePanelFloatView: main "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p0, v0}, Ls8/h;->K0(Lcom/miui/dock/sidebar/j;)V

    :cond_0
    iget-object v0, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    if-eqz v0, :cond_1

    const-string v0, "removePanelFloatView: assistant "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p0, v0}, Ls8/h;->K0(Lcom/miui/dock/sidebar/j;)V

    :cond_1
    return-void
.end method

.method public I()V
    .locals 1

    iget-object v0, p0, Ls8/h;->g:Lx5/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lx5/q;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls8/h;->g:Lx5/q;

    :cond_0
    return-void
.end method

.method public J()V
    .locals 0
    return-void
.end method

.method public J0()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeSidebar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls8/h;->i:Landroid/view/WindowManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ls8/h;->o:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " DockWindowManager = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ls8/h;->i:Landroid/view/WindowManager;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Ls8/h;->o:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v3, p0, Ls8/h;->o:Z

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/RegionSamplingImageView;->g()V

    iget-object v0, p0, Ls8/h;->i:Landroid/view/WindowManager;

    iget-object v1, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Ls8/h;->i:Landroid/view/WindowManager;

    iget-object v1, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    if-eqz v0, :cond_3

    iget-object v1, p0, Ls8/h;->i:Landroid/view/WindowManager;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Ls8/h;->i:Landroid/view/WindowManager;

    iget-object v1, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-direct {p0}, Ls8/h;->C()V

    invoke-static {}, Ld7/l;->x()Ld7/l;

    move-result-object v0

    invoke-virtual {v0}, Ld7/l;->L()V

    iget-object v0, p0, Ls8/h;->i:Landroid/view/WindowManager;

    invoke-static {v0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->m(Landroid/view/WindowManager;)V

    invoke-static {}, Lp7/b;->f()Lp7/b;

    move-result-object v0

    invoke-virtual {v0}, Lp7/b;->m()V

    invoke-virtual {p0}, Ls8/h;->D0()V

    invoke-direct {p0}, Ls8/h;->C0()V

    invoke-direct {p0}, Ls8/h;->t1()V

    invoke-virtual {p0}, Ls8/h;->J()V

    :cond_4
    :goto_1
    return-void
.end method

.method public K()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissShortCut mShortCutMenu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls8/h;->m:Z

    iget-object v1, p0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Ls8/h;->d1(Z)V

    iget-object v0, p0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public K0(Lcom/miui/dock/sidebar/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ls8/h;->L0(Lcom/miui/dock/sidebar/j;Z)V

    return-void
.end method

.method public L(Lcom/miui/dock/sidebar/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ls8/h;->M(Lcom/miui/dock/sidebar/j;Z)V

    return-void
.end method

.method public M0()V
    .locals 2

    iget-object v0, p0, Ls8/h;->j:Ld7/a0;

    if-eqz v0, :cond_0

    const-string v0, "DockWindowManager"

    const-string v1, "Hide the theatre guidance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ls8/h;->j:Ld7/a0;

    invoke-virtual {v0}, Ld7/a0;->g()V

    iget-object v0, p0, Ls8/h;->n:Landroid/os/Handler;

    iget-object v1, p0, Ls8/h;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ls8/h;->j:Ld7/a0;

    :cond_0
    return-void
.end method

.method public N0()V
    .locals 1

    invoke-virtual {p0}, Ls8/h;->H0()V

    iget-object v0, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iget-boolean v0, v0, Lcom/miui/gamebooster/service/DockWindowManagerService;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ls8/h;->i1()V

    :cond_0
    return-void
.end method

.method public O0()V
    .locals 0

    invoke-direct {p0}, Ls8/h;->P0()V

    return-void
.end method

.method public Q()Lo7/a;
    .locals 1

    iget-object v0, p0, Ls8/h;->b:Lo7/a;

    return-object v0
.end method

.method public R0(I)V
    .locals 4

    invoke-direct {p0, p1}, Ls8/h;->S(I)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Ls8/h;->x0(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object p1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "sidebar_bounds"

    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveSidebarBounds: last = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DockWindowManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveSidebarBounds: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {p1}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "INTENT_SIDEBAR_LOCATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lr0/a;->d(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public S0(Ls8/h$j;)V
    .locals 0

    iput-object p1, p0, Ls8/h;->q:Ls8/h$j;

    return-void
.end method

.method public T0(Z)V
    .locals 0

    iput-boolean p1, p0, Ls8/h;->p:Z

    return-void
.end method

.method public U()Lcom/miui/gamebooster/service/DockWindowManagerService;
    .locals 1

    iget-object v0, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    return-object v0
.end method

.method public U0(I)V
    .locals 4

    iget v0, p0, Ls8/h;->t:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ls8/h;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Ls8/h;->v:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput p1, p0, Ls8/h;->t:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setToolBoxShowFlag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManager"

    invoke-static {v1, v0}, Lbh/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_2

    iput-wide v0, p0, Ls8/h;->u:J

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Ls8/h;->u:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ls8/h;->p1(J)V

    :goto_0
    return-void
.end method

.method public V0(IILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    iget-boolean v0, p0, Ls8/h;->o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Ls8/h;->r:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls8/h;->r:Z

    invoke-static {}, Li8/c;->C()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showTimingBubble: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DockWindowManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v4, p0, Ls8/h;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/16 v4, 0x7f6

    const/16 v4, 0x7f6
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz v1, :cond_3

    const v4, 0x7f130814

    goto :goto_1

    :cond_3
    const v4, 0x7f130815

    :goto_1
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v4, p0, Ls8/h;->s:Landroid/view/View;

    const/4 v5, 0x0

    if-nez v4, :cond_4

    iget-object v4, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v4, p2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Ls8/h;->s:Landroid/view/View;

    const v4, 0x7f0b0d06

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Landroid/widget/TextView;

    :cond_4
    if-nez v5, :cond_5

    return-void

    :cond_5
    const p2, 0x800033

    iput p2, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p2, -0x2

    iput p2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lx4/a0;->x()Z

    move-result p1

    iget-object p2, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {p2}, La8/k2;->y(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-gt p2, v4, :cond_6

    move p2, v2

    goto :goto_2

    :cond_6
    iget-object p2, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {}, Lcom/miui/common/c;->b()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    :goto_2
    if-eqz p1, :cond_7

    iget-object p1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {p1}, Lx4/a0;->n(Landroid/content/Context;)I

    move-result v2

    :cond_7
    iget-object p1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {p1}, La8/k2;->f(Landroid/content/Context;)I

    move-result p1

    iget-object v4, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    if-nez v4, :cond_8

    return-void

    :cond_8
    invoke-virtual {v4}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [I

    invoke-virtual {v4, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v7, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v7}, La8/k2;->z(Landroid/content/Context;)Z

    move-result v7

    const/16 v8, 0x10e

    const/16 v9, 0x5a

    const v10, 0x7f071e1d

    if-eqz v7, :cond_d

    if-eq p1, v9, :cond_b

    if-eq p1, v8, :cond_9

    goto :goto_8

    :cond_9
    if-eqz v1, :cond_a

    neg-int p1, p2

    iget-object p2, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_7

    :cond_a
    iget-object p1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {p1}, La8/k2;->r(Landroid/content/Context;)I

    move-result p1

    iget p2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_6

    :cond_b
    if-eqz v1, :cond_c

    goto :goto_3

    :cond_c
    iget-object p1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {p1}, La8/k2;->r(Landroid/content/Context;)I

    move-result p1

    add-int/2addr p1, p2

    add-int/2addr p1, v2

    iget p2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_5

    :cond_d
    if-eq p1, v9, :cond_f

    if-eq p1, v8, :cond_f

    if-eqz v1, :cond_e

    goto :goto_3

    :cond_e
    invoke-static {}, La8/k2;->u()I

    move-result p1

    goto :goto_4

    :cond_f
    if-eqz v1, :cond_10

    :goto_3
    iget-object p1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_7

    :cond_10
    invoke-static {}, La8/k2;->t()I

    move-result p1

    :goto_4
    invoke-direct {p0}, Ls8/h;->O()I

    move-result p2

    :goto_5
    sub-int/2addr p1, p2

    iget-object p2, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    :goto_6
    sub-int/2addr p1, p2

    :goto_7
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_8
    aget p1, v6, v0

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/2addr p2, v5

    add-int/2addr p1, p2

    iget-object p2, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071e31

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Ls8/h;->i:Landroid/view/WindowManager;

    iget-object p2, p0, Ls8/h;->s:Landroid/view/View;

    invoke-interface {p1, p2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p4}, Li8/c;->g0(Ljava/lang/String;)V

    iget-object p1, p0, Ls8/h;->n:Landroid/os/Handler;

    iget-object p2, p0, Ls8/h;->I:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {p3}, Lcom/miui/gamebooster/utils/a$o;->j(Ljava/lang/String;)V

    return-void
.end method

.method public W0()V
    .locals 4

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    if-nez v0, :cond_0

    const-string v0, "DockWindowManager"

    const-string v1, "side bar is null! "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Ls8/h;->g:Lx5/q;

    if-nez v0, :cond_1

    new-instance v0, Lx5/q;

    iget-object v1, p0, Ls8/h;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lx5/q;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Ls8/h;->g:Lx5/q;

    :cond_1
    iget-object v0, p0, Ls8/h;->g:Lx5/q;

    invoke-virtual {v0}, Lx5/q;->e()V

    return-void
.end method

.method public X()Lcom/miui/dock/sidebar/j;
    .locals 1

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    return-object v0
.end method

.method public Y()I
    .locals 1

    iget-object v0, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lm5/g;->h(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public Y0(Lcom/miui/dock/sidebar/j;Ljava/lang/Runnable;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    iget-object v1, p0, Ls8/h;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const-string v1, "showDockView"

    invoke-direct {p0, v0, v1}, Ls8/h;->d0(ZLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showDockView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1, v2, p2}, Lcom/miui/dock/sidebar/a;->k(Lcom/miui/dock/sidebar/j;ZFFLjava/lang/Runnable;)V

    invoke-direct {p0}, Ls8/h;->q1()V

    return-void
.end method

.method public Z()Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Ls8/h;->i:Landroid/view/WindowManager;

    return-object v0
.end method

.method public Z0(IIIFFFF)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p4

    const-string v2, "DockWindowManager"

    const-string v3, "showFloatMonitorLineWithAnimator: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v4, v0, Ls8/h;->t:I

    if-eqz v4, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x2

    new-array v7, v6, [Landroid/animation/Animator;

    new-array v8, v6, [F

    neg-float v9, v1

    aput v9, v8, v3

    const/4 v9, 0x1

    aput v1, v8, v9

    const-string v10, "translationX"

    invoke-static {v2, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v3

    new-array v8, v6, [F

    aput p5, v8, v3

    aput p6, v8, v9

    const-string v11, "alpha"

    invoke-static {v2, v11, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move/from16 v7, p1

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v13, v6, [Landroid/animation/Animator;

    new-array v14, v6, [F

    aput v1, v14, v3

    aput v4, v14, v9

    invoke-static {v2, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v13, v3

    new-array v14, v6, [F

    aput p6, v14, v3

    aput p5, v14, v9

    invoke-static {v2, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v13, v9

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move/from16 v13, p2

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v9, v6, [Landroid/animation/Animator;

    move-object/from16 p1, v12

    new-array v12, v6, [F

    aput v4, v12, v3

    const/16 v16, 0x1

    aput v1, v12, v16

    invoke-static {v2, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v9, v3

    new-array v12, v6, [F

    aput p5, v12, v3

    aput p6, v12, v16

    invoke-static {v2, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v9, v16

    invoke-virtual {v15, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move/from16 v9, p3

    move-object/from16 v17, v5

    int-to-long v4, v9

    invoke-virtual {v15, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v15, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v6, [Landroid/animation/Animator;

    new-array v7, v6, [F

    aput v1, v7, v3

    const/4 v1, 0x0

    aput v1, v7, v16

    invoke-static {v2, v10, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v5, v3

    new-array v1, v6, [F

    aput p6, v1, v3

    aput p7, v1, v16

    invoke-static {v2, v11, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v5, v16

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v4, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Ls8/h;->A:Landroid/animation/AnimatorSet;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v17, v2, v3

    aput-object p1, v2, v16

    aput-object v15, v2, v6

    const/4 v3, 0x3

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v1, v0, Ls8/h;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iget-object v1, v0, Ls8/h;->A:Landroid/animation/AnimatorSet;

    new-instance v2, Ls8/h$f;

    invoke-direct {v2, v0}, Ls8/h$f;-><init>(Ls8/h;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public a1()V
    .locals 9

    sget-boolean v0, Ln6/a;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->z0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iget-boolean v0, v0, Lcom/miui/gamebooster/service/DockWindowManagerService;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ls8/h;->c:Landroid/content/Context;

    iget-object v1, p0, Ls8/h;->i:Landroid/view/WindowManager;

    invoke-direct {p0}, Ls8/h;->G()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->C(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;Ls8/h;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iget-boolean v0, v0, Lcom/miui/gamebooster/service/DockWindowManagerService;->d:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Ls8/h;->x:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    invoke-static {v0, v1}, Ldb/i;->k(Landroid/view/View;I)V

    iget-object v0, p0, Ls8/h;->n:Landroid/os/Handler;

    new-instance v1, Ls8/c;

    invoke-direct {v1, p0}, Ls8/c;-><init>(Ls8/h;)V

    const-wide/16 v2, 0xbe0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/gamebooster/service/DockWindowManagerService;->d:Z

    goto :goto_1

    :cond_3
    invoke-static {}, Ld7/l;->x()Ld7/l;

    move-result-object v2

    iget-object v3, p0, Ls8/h;->c:Landroid/content/Context;

    iget-boolean v4, p0, Ls8/h;->o:Z

    iget-object v5, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    iget-object v0, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m0()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->n0()I

    move-result v7

    invoke-direct {p0}, Ls8/h;->G()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Ld7/l;->W(Landroid/content/Context;ZLcom/miui/dock/sidebar/j;Ljava/lang/String;ILandroid/view/WindowManager$LayoutParams;)V

    :goto_1
    invoke-virtual {p0}, Ls8/h;->F()V

    return-void
.end method

.method public b0(Lcom/miui/dock/sidebar/j;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->u(Z)V

    invoke-direct {p0, p1, p2}, Ls8/h;->N(Lcom/miui/dock/sidebar/j;Z)V

    return-void
.end method

.method public b1(Lcom/miui/dock/sidebar/j;)V
    .locals 6

    invoke-static {}, Ld7/l;->x()Ld7/l;

    move-result-object v0

    iget-object v1, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->c()I

    move-result v2

    iget-object v3, p0, Ls8/h;->i:Landroid/view/WindowManager;

    invoke-static {}, Lve/k;->R()Lve/k;

    move-result-object v1

    invoke-virtual {v1}, Lve/k;->S()Z

    move-result v4

    invoke-direct {p0}, Ls8/h;->R()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ld7/l;->X(Lcom/miui/dock/sidebar/j;ILandroid/view/WindowManager;ZLjava/lang/String;)V

    return-void
.end method

.method public c0(ZZ)V
    .locals 3

    if-eqz p2, :cond_0

    const-string p2, "hideOrShowSidebar"

    invoke-direct {p0, p1, p2}, Ls8/h;->d0(ZLjava/lang/String;)V

    goto :goto_2

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hideOrShowSidebar: isShow = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DockWindowManager"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    iget-object v2, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v2}, Lo7/a;->c()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-static {p2, v2}, Ldb/i;->k(Landroid/view/View;I)V

    invoke-direct {p0}, Ls8/h;->h0()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object p2

    if-eqz p1, :cond_2

    iget-object p1, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {p1}, Lo7/a;->c()I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-static {p2, v0}, Ldb/i;->k(Landroid/view/View;I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public e1(Lcom/miui/dock/sidebar/j;Z)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ls8/h;->f1(Lcom/miui/dock/sidebar/j;Z[ILg5/j;Landroid/view/View;)V

    return-void
.end method

.method public f1(Lcom/miui/dock/sidebar/j;Z[ILg5/j;Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "DockWindowManager"

    const-string p2, "showOrHideShortCutMenu: invalid!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_2

    iget-object p2, p0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p4}, Lcom/miui/dock/drag/DockShortCutMenu;->e(Lg5/j;)V

    if-eqz p3, :cond_1

    iget-object p2, p0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    invoke-static {p2}, Lm5/g;->g(Landroid/view/View;)V

    iget-object p2, p0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, p1}, Ls8/h;->V(Lcom/miui/dock/sidebar/j;)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p4

    const/4 v0, 0x1

    aget p3, p3, v0

    invoke-direct {p0, p3, p5}, Ls8/h;->W(ILandroid/view/View;)I

    move-result p3

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p5

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2, p4, p3, p5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p3, p0, Ls8/h;->l:Lcom/miui/dock/drag/DockShortCutMenu;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-direct {p0, p1}, Ls8/h;->h1(Lcom/miui/dock/sidebar/j;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ls8/h;->K()V

    :goto_0
    return-void
.end method

.method public i1()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSidebar: isSidebarAdded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ls8/h;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " DockWindowManager = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->c()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "showSidebar: dock type invalid!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v0}, La8/t1;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "showSidebar: isScreenLocked!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->C0()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "showSidebar: isInSwipeUpUnlockView!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Ls8/h;->Z()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v3, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v3}, La8/t1;->c(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSidebar: display state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-static {}, Lx4/y;->h()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lx4/g;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Ls8/h;->o:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Ls8/h;->y()V

    :cond_7
    invoke-direct {p0}, Ls8/h;->h0()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "showSidebar: isDockViewAdded!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    const-string v0, "showSidebar"

    invoke-direct {p0, v2, v0}, Ls8/h;->d0(ZLjava/lang/String;)V

    return-void

    :cond_9
    :goto_0
    const-string v0, "showSidebar: FlipDeviceTinyScreen!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public j0()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShortCutMenuShow isShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ls8/h;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Ls8/h;->m:Z

    return v0
.end method

.method public j1()V
    .locals 6

    const-string v0, "DockWindowManager"

    const-string v1, "showSidebarDragTips"

    invoke-static {v0, v1}, Lb8/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_show_sidebar_drag_tips"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Ls8/h;->c:Landroid/content/Context;

    const v4, 0x7f13017f

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lmiuix/popupwidget/widget/GuidePopupWindow;

    invoke-direct {v3, v2}, Lmiuix/popupwidget/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Ls8/h;->f:Lmiuix/popupwidget/widget/GuidePopupWindow;

    const v2, 0x7f120b4e

    invoke-virtual {v3, v2}, Lmiuix/popupwidget/widget/GuidePopupWindow;->setGuideText(I)V

    iget-object v2, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v2

    const/16 v3, 0x9

    const/16 v4, 0xa

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-static {}, La8/k2;->A()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v2, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    move v2, v3

    :cond_3
    iget-object v3, p0, Ls8/h;->f:Lmiuix/popupwidget/widget/GuidePopupWindow;

    invoke-virtual {v3, v2}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setArrowMode(I)V

    iget-object v2, p0, Ls8/h;->f:Lmiuix/popupwidget/widget/GuidePopupWindow;

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v3}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v3}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lb8/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ls8/h;->f:Lmiuix/popupwidget/widget/GuidePopupWindow;

    iget-object v2, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v2

    iget-object v3, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071d72

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v4}, Lmiuix/popupwidget/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    invoke-static {v1, v4}, Lr4/a;->n(Ljava/lang/String;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public k0()Z
    .locals 1

    iget-boolean v0, p0, Ls8/h;->o:Z

    return v0
.end method

.method public k1()V
    .locals 0
    return-void
.end method

.method public l0()Z
    .locals 1

    iget-boolean v0, p0, Ls8/h;->p:Z

    return v0
.end method

.method public l1(Lg8/a;)V
    .locals 1

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->Q()V

    invoke-direct {p0, p1}, Ls8/h;->X0(Lg8/a;)V

    :cond_0
    return-void
.end method

.method public m1()V
    .locals 2

    const-string v0, "DockWindowManager"

    const-string v1, "showToolBoxPanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->P()V

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ls8/h;->Y0(Lcom/miui/dock/sidebar/j;Ljava/lang/Runnable;)V

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p0, v0}, Ls8/h;->n1(Lcom/miui/dock/sidebar/j;)V

    :cond_0
    return-void
.end method

.method public n1(Lcom/miui/dock/sidebar/j;)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->t()V

    iget-object p1, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {p1}, Lo7/a;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ls8/h;->A(Z)V

    :cond_0
    return-void
.end method

.method public o1(Lcom/miui/dock/sidebar/j;)Z
    .locals 4

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La8/k0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ls8/h$h;

    invoke-direct {v0, p0, p1}, Ls8/h$h;-><init>(Ls8/h;Lcom/miui/dock/sidebar/j;)V

    invoke-static {}, Lcom/miui/gamebooster/guide/CasualModeGuide;->Q()V

    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object v1

    invoke-direct {p0}, Ls8/h;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result p1

    invoke-virtual {p0}, Ls8/h;->Y()I

    move-result v3

    invoke-virtual {v1, v2, p1, v3, v0}, Lve/g;->A(Ljava/lang/String;ZILcom/miui/gameturbo/active/IWebPanelCallback;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public s0(I)V
    .locals 1

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p0, p1, v0}, Ls8/h;->t0(ILcom/miui/dock/sidebar/j;)V

    iget-object v0, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p0, p1, v0}, Ls8/h;->t0(ILcom/miui/dock/sidebar/j;)V

    :cond_0
    return-void
.end method

.method public s1(Lcom/miui/dock/sidebar/j;Z)V
    .locals 3

    iget-object v0, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    if-nez v0, :cond_0

    const-string p1, "DockWindowManager"

    const-string p2, "trackPanelShow: error"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v0

    iget-object v1, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gameturbo_main_pannel"

    invoke-static {v2, v1, v0, p2}, Lcom/miui/gamebooster/utils/a$n;->L(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ls8/h;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/miui/gamebooster/utils/a$o;->w(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getConversationViewAdapter()Ly5/i;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ly5/i;->J()V

    :cond_3
    :goto_0
    invoke-direct {p0}, Ls8/h;->q1()V

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getDockLayout()Lcom/miui/gamebooster/windowmanager/newbox/e;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p2}, Lcom/miui/gamebooster/windowmanager/newbox/e;->K(Z)V

    :cond_4
    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getGameTurboLayout()Lcom/miui/gamebooster/windowmanager/newbox/c0;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->i()V

    :cond_5
    return-void
.end method

.method public t0(ILcom/miui/dock/sidebar/j;)V
    .locals 13

    const-string v0, "DockWindowManager"

    if-nez p2, :cond_0

    const-string p1, "moveSidebar: view not init!"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->F()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ls8/h;->j0()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p2, v2}, Ls8/h;->M(Lcom/miui/dock/sidebar/j;Z)V

    return-void

    :cond_2
    invoke-virtual {p2, p1}, Lcom/miui/dock/sidebar/j;->V(I)V

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveSidebar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ===> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->t()Ljava/lang/String;

    move-result-object v0

    const-string v3, "assistant"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Ls8/h;->v1(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Ls8/h;->v1(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "anim_move_sidebar_y"

    const/4 v9, 0x0

    aput-object v3, v0, v9

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const/4 v10, 0x2

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "sidebarY"

    aput-object v4, v3, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-interface {v0, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v4, -0x2

    new-array v5, v10, [F

    fill-array-data v5, :array_0

    invoke-virtual {v3, v4, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v11

    new-array v2, v2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v12, Ls8/h$d;

    move-object v3, v12

    move-object v4, p0

    move-object v5, p2

    move v8, p1

    invoke-direct/range {v3 .. v8}, Ls8/h$d;-><init>(Ls8/h;Lcom/miui/dock/sidebar/j;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;I)V

    aput-object v12, v2, v9

    invoke-virtual {v11, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v1, v10

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public u0()V
    .locals 1

    iget-object v0, p0, Ls8/h;->q:Ls8/h$j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ls8/h$j;->a()V

    :cond_0
    return-void
.end method

.method public u1()V
    .locals 2

    iget-object v0, p0, Ls8/h;->k:Lcom/miui/dock/sidebar/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getDockLayout()Lcom/miui/gamebooster/windowmanager/newbox/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ls8/h;->k:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/e;->L()V

    :cond_0
    return-void
.end method

.method public v(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {v0, p2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 p2, -0x2

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/dock/sidebar/j;->r(Landroid/content/Context;)I

    move-result v1

    add-int/2addr p2, v1

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/dock/sidebar/j;->s(Landroid/content/Context;)I

    move-result v1

    add-int/2addr p2, v1

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 p2, 0x0

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object p2, p0, Ls8/h;->i:Landroid/view/WindowManager;

    invoke-interface {p2, p1, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public v0(Lcom/miui/dock/sidebar/j;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performCreateView: left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " DockWindowManager = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v0}, Ls8/h;->B(Landroid/content/Context;)V

    iget-object v0, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ls8/h;->C0()V

    invoke-direct {p0}, Ls8/h;->A0()V

    iget-object v0, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lvg/a;->b(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0, p1}, Ls8/h;->D(Lcom/miui/dock/sidebar/j;)V

    return-void
.end method

.method public v1(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-boolean v0, p0, Ls8/h;->o:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ls8/h;->i:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "DockWindowManager"

    const-string v0, "updateSidebarLayoutParams: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public w0()V
    .locals 3

    new-instance v0, Ls8/h$g;

    invoke-direct {v0, p0}, Ls8/h$g;-><init>(Ls8/h;)V

    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object v1

    invoke-direct {p0}, Ls8/h;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lve/g;->r(Ljava/lang/String;Lcom/miui/gameturbo/active/IWebPanelCallback;)Z

    return-void
.end method

.method public w1()V
    .locals 4

    iget-object v0, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ls8/h;->o:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSidebarWrapperAssistant, mDockWindowType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManager"

    invoke-static {v1, v0}, Lb8/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ls8/h;->P(Lcom/miui/dock/sidebar/j;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Ls8/h;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071a81

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object v2

    invoke-direct {p0, v2}, Ls8/h;->e0(Landroid/view/View;)V

    iget-object v2, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Ls8/h;->v1(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    invoke-direct {p0, v0, v1}, Ls8/h;->T(Lcom/miui/dock/sidebar/j;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-direct {p0, v2}, Ls8/h;->e0(Landroid/view/View;)V

    iget-object v2, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Ls8/h;->v1(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object v0

    invoke-static {v0, v1}, Ldb/i;->k(Landroid/view/View;I)V

    iget-object v0, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0, v1}, Ldb/i;->k(Landroid/view/View;I)V

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/RegionSamplingImageView;->g()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ldb/i;->k(Landroid/view/View;I)V

    iget-object v0, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0, v1}, Ldb/i;->k(Landroid/view/View;I)V

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/RegionSamplingImageView;->f()V

    :goto_0
    invoke-virtual {p0}, Ls8/h;->Y()I

    move-result v0

    iget-object v1, p0, Ls8/h;->e:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1, v0}, Lcom/miui/dock/sidebar/j;->V(I)V

    invoke-virtual {p0, v0}, Ls8/h;->R0(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public x1()V
    .locals 2

    iget-object v0, p0, Ls8/h;->h:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Ls8/h;->b:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public y0(Z)V
    .locals 1

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->m(Z)V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 1

    iget-object v0, p0, Ls8/h;->A:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public z0(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "DockWindowManager"

    if-nez p1, :cond_0

    const-string p1, "refreshVideoBoxAudio : state is null!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshVideoBoxAudio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ls8/h;->d:Lcom/miui/dock/sidebar/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->n(Landroid/os/Bundle;)V

    :cond_1
    invoke-static {p1}, Lf8/a;->a(Landroid/os/Bundle;)V

    return-void
.end method
