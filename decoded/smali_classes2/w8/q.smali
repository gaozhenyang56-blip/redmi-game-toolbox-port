.class public final Lw8/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://xunyou.mobi/article-4557.html"

    iput-object v0, p0, Lw8/q;->b:Ljava/lang/String;

    const-string v0, "xunyou_booster_speed"

    iput-object v0, p0, Lw8/q;->c:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lw8/e;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lw8/q;->l(Lw8/e;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lw8/q;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lw8/q;->j(Lw8/q;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic c(Lw8/e;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lw8/q;->i(Lw8/e;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Lw8/q;Lw8/e;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lw8/q;->h(Lw8/q;Lw8/e;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lw8/e;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lw8/q;->m(Lw8/e;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final f(Landroid/app/Activity;Lw8/e;)V
    .locals 10

    const v0, 0x7f120bbf

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "activity.getString(R.str\u2026alog_privacy_speed_title)"

    invoke-static {v3, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f120bbc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ll7/b;->b()Ll7/b;

    move-result-object v1

    const v0, 0x7f120bbd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lw8/q$a;

    invoke-direct {v8, p2}, Lw8/q$a;-><init>(Lw8/e;)V

    const-string v6, "https://xunyou.mobi/article-4557.html"

    const-string v7, "xunyou_booster_speed"

    const v9, 0x7f130021

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Ll7/b;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll7/b$j;I)V

    invoke-static {}, Lcom/miui/gamebooster/utils/a;->h0()V

    return-void
.end method

.method private final g(Landroid/app/Activity;Lw8/e;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    const/4 v15, 0x1

    invoke-static {v15}, Lw8/g;->d(I)V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lw8/q;->a:Z

    invoke-static {}, Ll7/b;->b()Ll7/b;

    move-result-object v3

    const v4, 0x7f120e98

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f120e97

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f120bbe

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lw8/q;->b:Ljava/lang/String;

    const v8, 0x7f120982

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f12049a

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v12, Lw8/l;

    invoke-direct {v12, v0, v1, v2}, Lw8/l;-><init>(Lw8/q;Lw8/e;Landroid/app/Activity;)V

    new-instance v13, Lw8/m;

    invoke-direct {v13, v1}, Lw8/m;-><init>(Lw8/e;)V

    new-instance v14, Lw8/n;

    invoke-direct {v14, v0}, Lw8/n;-><init>(Lw8/q;)V

    new-instance v11, Lw8/q$b;

    invoke-direct {v11, v1}, Lw8/q$b;-><init>(Lw8/e;)V

    const/4 v10, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move/from16 v10, v16

    move-object/from16 v16, v11

    move/from16 v11, v17

    move v0, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v1 .. v15}, Ll7/b;->h(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLandroid/view/View$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;Ll7/b$j;)Lmiuix/appcompat/app/AlertDialog;

    const-string v1, "show"

    const-string v2, "time"

    invoke-static {v1, v2}, Lcom/miui/gamebooster/utils/a;->u(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gt_xunyou_net_privacy_alter_not_show"

    invoke-static {v1, v0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method private static final h(Lw8/q;Lw8/e;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$activity"

    invoke-static {p2, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p3, p0, Lw8/q;->a:Z

    if-eqz p3, :cond_0

    const-string p0, "show"

    const-string p2, "open_now"

    invoke-static {p0, p2}, Lcom/miui/gamebooster/utils/a;->u(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lw8/e;->a()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p1}, Lw8/q;->k(Landroid/app/Activity;Lw8/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final i(Lw8/e;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "show"

    const-string p2, "cancle"

    invoke-static {p1, p2}, Lcom/miui/gamebooster/utils/a;->u(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lw8/e;->b()V

    :cond_0
    return-void
.end method

.method private static final j(Lw8/q;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p2, p0, Lw8/q;->a:Z

    return-void
.end method

.method private final k(Landroid/app/Activity;Lw8/e;)V
    .locals 17

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    invoke-static {}, Ll7/b;->b()Ll7/b;

    move-result-object v2

    const v3, 0x7f12097f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f12097e

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v15, p0

    iget-object v6, v15, Lw8/q;->b:Ljava/lang/String;

    const v7, 0x7f12097d

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f12097c

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Lw8/o;

    invoke-direct {v11, v0}, Lw8/o;-><init>(Lw8/e;)V

    new-instance v12, Lw8/p;

    invoke-direct {v12, v0}, Lw8/p;-><init>(Lw8/e;)V

    new-instance v14, Lw8/q$c;

    invoke-direct {v14, v0}, Lw8/q$c;-><init>(Lw8/e;)V

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move v10, v13

    move-object/from16 v13, v16

    invoke-virtual/range {v0 .. v14}, Ll7/b;->h(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLandroid/view/View$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;Ll7/b$j;)Lmiuix/appcompat/app/AlertDialog;

    invoke-static {}, Lcom/miui/gamebooster/utils/a$n;->N()V

    return-void
.end method

.method private static final l(Lw8/e;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lw8/e;->a()V

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/utils/a$n;->M()V

    return-void
.end method

.method private static final m(Lw8/e;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lw8/e;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final n(Landroid/app/Activity;ZLw8/e;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lw8/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p3}, Lw8/q;->g(Landroid/app/Activity;Lw8/e;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lw8/q;->f(Landroid/app/Activity;Lw8/e;)V

    :goto_0
    return-void
.end method
