.class public Ll7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll7/b$j;
    }
.end annotation


# static fields
.field private static a:Ll7/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ll7/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized b()Ll7/b;
    .locals 2

    const-class v0, Ll7/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ll7/b;->a:Ll7/b;

    if-nez v1, :cond_0

    new-instance v1, Ll7/b;

    invoke-direct {v1}, Ll7/b;-><init>()V

    sput-object v1, Ll7/b;->a:Ll7/b;

    :cond_0
    sget-object v1, Ll7/b;->a:Ll7/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private d(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ll7/b$i;

    invoke-direct {v0, p0, p1, p2}, Ll7/b$i;-><init>(Ll7/b;Landroid/content/Context;Z)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;Ll7/b$j;Lmiuix/appcompat/app/AlertDialog;Landroid/text/SpannableStringBuilder;)V
    .locals 7

    new-instance v6, Ll7/b$h;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ll7/b$h;-><init>(Ll7/b;Landroid/content/Context;Ljava/lang/String;Ll7/b$j;Lmiuix/appcompat/app/AlertDialog;)V

    :try_start_0
    invoke-virtual {p5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    const-class p3, Landroid/text/style/URLSpan;

    const/4 p4, 0x0

    invoke-virtual {p5, p4, p2, p3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/URLSpan;

    aget-object p2, p2, p4

    invoke-virtual {p5, p2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p5, p2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result p4

    invoke-virtual {p5, p2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p5, v6, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, 0x7f0601c5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p5, v1, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p5, p2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "GbPrivacyManager"

    const-string p3, "setClickSpan error "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll7/b$j;)V
    .locals 9

    const v8, 0x7f130021

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Ll7/b;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll7/b$j;I)V

    return-void
.end method

.method public g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll7/b$j;I)V
    .locals 6

    new-instance v0, Lcom/miui/common/ui/d$b;

    invoke-direct {v0, p1, p8}, Lcom/miui/common/ui/d$b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p2}, Lcom/miui/common/ui/d$b;->k(Ljava/lang/CharSequence;)Lcom/miui/common/ui/d$b;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/miui/common/ui/d$b;->f(Ljava/lang/CharSequence;)Lcom/miui/common/ui/d$b;

    move-result-object p2

    const/4 p3, 0x0

    const-string p8, ""

    invoke-virtual {p2, p3, p8}, Lcom/miui/common/ui/d$b;->c(ZLjava/lang/String;)Lcom/miui/common/ui/d$b;

    move-result-object p2

    new-instance p8, Ll7/b$b;

    invoke-direct {p8, p0, p7}, Ll7/b$b;-><init>(Ll7/b;Ll7/b$j;)V

    const v0, 0x7f12049a

    invoke-virtual {p2, v0, p8}, Lcom/miui/common/ui/d$b;->g(ILandroid/content/DialogInterface$OnClickListener;)Lcom/miui/common/ui/d$b;

    move-result-object p2

    new-instance p8, Ll7/b$a;

    invoke-direct {p8, p0, p1, p6, p7}, Ll7/b$a;-><init>(Ll7/b;Landroid/content/Context;Ljava/lang/String;Ll7/b$j;)V

    const p6, 0x7f120f49

    invoke-virtual {p2, p6, p8}, Lcom/miui/common/ui/d$b;->i(ILandroid/content/DialogInterface$OnClickListener;)Lcom/miui/common/ui/d$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/common/ui/d$b;->a()Lcom/miui/common/ui/d;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p6

    const/16 p8, 0x7d3

    invoke-virtual {p6, p8}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p6

    invoke-static {p6}, Lx4/d1;->a(Landroid/view/Window;)V

    new-instance p6, Ll7/b$c;

    invoke-direct {p6, p0, p7}, Ll7/b$c;-><init>(Ll7/b;Ll7/b$j;)V

    invoke-virtual {p2, p6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p6, 0x1

    new-array p6, p6, [Ljava/lang/Object;

    aput-object p5, p6, p3

    invoke-static {p4, p6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    new-instance p4, Landroid/text/SpannableStringBuilder;

    invoke-direct {p4, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p7

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ll7/b;->e(Landroid/content/Context;Ljava/lang/String;Ll7/b$j;Lmiuix/appcompat/app/AlertDialog;Landroid/text/SpannableStringBuilder;)V

    const p3, 0x1020001

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p4, Ll7/a;

    invoke-direct {p4}, Ll7/a;-><init>()V

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x106000d

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setHighlightColor(I)V

    const/4 p1, -0x1

    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p4

    invoke-virtual {p1, p4}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    new-instance p1, Ll7/b$d;

    invoke-direct {p1, p0, p2}, Ll7/b$d;-><init>(Ll7/b;Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {p3, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    return-void
.end method

.method public h(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLandroid/view/View$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;Ll7/b$j;)Lmiuix/appcompat/app/AlertDialog;
    .locals 10
    .param p11    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Ll7/b$j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v0, p6

    move-object/from16 v1, p11

    const/4 v2, 0x0

    if-eqz v7, :cond_6

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v4, 0x7f130023

    invoke-direct {v3, p1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object v4, p2

    invoke-virtual {v3, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    move-object v4, p3

    invoke-virtual {v3, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    move-object/from16 v5, p7

    move-object/from16 v8, p12

    invoke-virtual {v3, v5, v8}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz p10, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ll7/b$e;

    invoke-direct {v2, p0, v1}, Ll7/b$e;-><init>(Ll7/b;Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-virtual {v3, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v8

    if-eqz p10, :cond_2

    new-instance v0, Ll7/b$f;

    invoke-direct {v0, p0, v8, v1}, Ll7/b$f;-><init>(Ll7/b;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_2
    invoke-virtual {v8}, Lmiuix/appcompat/app/AlertDialog;->show()V

    new-instance v0, Ll7/b$g;

    move-object/from16 v3, p14

    invoke-direct {v0, p0, v3}, Ll7/b$g;-><init>(Ll7/b;Ll7/b$j;)V

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p5, v0, v4

    move-object v1, p4

    invoke-static {p4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Ll7/b;->e(Landroid/content/Context;Ljava/lang/String;Ll7/b$j;Lmiuix/appcompat/app/AlertDialog;Landroid/text/SpannableStringBuilder;)V

    const v0, 0x1020001

    invoke-virtual {v8, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v1, 0x106000d

    if-eqz v0, :cond_3

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ll7/a;

    invoke-direct {v2}, Ll7/a;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    move-object/from16 v2, p13

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-eqz p9, :cond_3

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {v8}, Lmiuix/appcompat/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p8, :cond_4

    if-eqz v0, :cond_4

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setTextAlignment(I)V

    :cond_4
    if-eqz p9, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ll7/a;

    invoke-direct {v2}, Ll7/a;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_5
    return-object v8

    :cond_6
    :goto_1
    return-object v2
.end method

.method public i(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ll7/b;->d(Landroid/content/Context;Z)V

    :cond_0
    invoke-static {}, La8/g0;->b0()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ll7/b;->d(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method
