.class public Lcom/miui/antivirus/activity/VirusDetailActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/activity/VirusDetailActivity$e;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/antivirus/model/d;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/activity/VirusDetailActivity;->c:Ljava/util/List;

    new-instance v0, Lcom/miui/antivirus/activity/VirusDetailActivity$c;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/VirusDetailActivity$c;-><init>(Lcom/miui/antivirus/activity/VirusDetailActivity;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/VirusDetailActivity;->d:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic d0(Lcom/miui/antivirus/activity/VirusDetailActivity;)Lcom/miui/antivirus/model/d;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/VirusDetailActivity;->a:Lcom/miui/antivirus/model/d;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/antivirus/activity/VirusDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/VirusDetailActivity;->j0()V

    return-void
.end method

.method static synthetic f0(Lcom/miui/antivirus/activity/VirusDetailActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/VirusDetailActivity;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/antivirus/activity/VirusDetailActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/VirusDetailActivity;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/antivirus/activity/VirusDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/VirusDetailActivity;->i0()V

    return-void
.end method

.method private i0()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/miui/antivirus/activity/VirusDetailActivity;->a:Lcom/miui/antivirus/model/d;

    const-string v3, "model"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private j0()V
    .locals 4

    invoke-static {p0}, Lo2/c;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/VirusDetailActivity;->i0()V

    return-void

    :cond_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121ba8

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121ba6

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    iget-object v2, p0, Lcom/miui/antivirus/activity/VirusDetailActivity;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121ba7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "danger"

    const-string v2, ""

    invoke-super/range {p0 .. p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f0e050b

    invoke-virtual {v1, v3}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    const-string v4, "model"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/miui/antivirus/model/d;

    iput-object v3, v1, Lcom/miui/antivirus/activity/VirusDetailActivity;->a:Lcom/miui/antivirus/model/d;

    const v3, 0x7f0b0506

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0b07e7

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0b0d31

    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0b0d6e

    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0b0a8f

    invoke-virtual {v1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0b03da

    invoke-virtual {v1, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0b0da5

    invoke-virtual {v1, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0b0da4

    invoke-virtual {v1, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0b0da0

    invoke-virtual {v1, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f0b0d9f

    invoke-virtual {v1, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0b0189

    invoke-virtual {v1, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    invoke-static/range {p0 .. p0}, Lcom/miui/earthquakewarning/utils/Utils;->isEnableGestureLine(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f071e1d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    iget v15, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v14

    iput v15, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const v13, 0x7f0b0a78

    invoke-virtual {v1, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v1, Lcom/miui/antivirus/activity/VirusDetailActivity;->b:Landroid/widget/TextView;

    const v13, 0x7f0b0534

    invoke-virtual {v1, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    const v14, 0x7f0b0d38

    invoke-virtual {v1, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    iget-object v15, v1, Lcom/miui/antivirus/activity/VirusDetailActivity;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {v15}, Lcom/miui/antivirus/model/d;->i()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/miui/antivirus/activity/VirusDetailActivity;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {v4}, Lcom/miui/antivirus/model/d;->r()Lo2/g$k;

    move-result-object v4

    sget-object v15, Lcom/miui/antivirus/activity/VirusDetailActivity$d;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v15, v4

    const/4 v15, 0x1

    if-eq v4, v15, :cond_3

    const/4 v15, 0x2

    if-eq v4, v15, :cond_2

    goto :goto_2

    :cond_2
    const v4, 0x7f121b9c

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apk_icon://"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/miui/antivirus/activity/VirusDetailActivity;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {v8}, Lcom/miui/antivirus/model/d;->u()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_3
    const v4, 0x7f121b9b

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pkg_icon://"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/miui/antivirus/activity/VirusDetailActivity;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {v8}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lx4/o0;->f:Lrh/c;

    const v15, 0x7f080954

    invoke-static {v4, v3, v8, v15}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_4

    const v4, 0x7f0b029e

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiuix/appcompat/app/ActionBar;->registerCoordinatedScrollView(Landroid/view/View;)V

    :cond_4
    iget-object v4, v1, Lcom/miui/antivirus/activity/VirusDetailActivity;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {v4}, Lcom/miui/antivirus/model/d;->s()Lo2/g$l;

    move-result-object v4

    sget-object v8, Lo2/g$l;->d:Lo2/g$l;

    if-ne v4, v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f1215a7

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1215ab

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1215a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1215a8

    goto :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f121ba1

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121bac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121ba9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121ba3

    :goto_3
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v3, v1, Lcom/miui/antivirus/activity/VirusDetailActivity;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {v3}, Lcom/miui/antivirus/model/d;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121b9a

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/miui/antivirus/activity/VirusDetailActivity;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {v5}, Lcom/miui/antivirus/model/d;->r()Lo2/g$k;

    move-result-object v9

    sget-object v11, Lo2/g$k;->a:Lo2/g$k;

    if-ne v9, v11, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    :goto_4
    invoke-static {v1, v5, v9}, Lw2/p;->e(Landroid/content/Context;Lcom/miui/antivirus/model/d;Z)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v3, v4, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/miui/antivirus/activity/VirusDetailActivity;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {v3}, Lcom/miui/antivirus/model/d;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v1, Lcom/miui/antivirus/activity/VirusDetailActivity;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {v3}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lw2/p;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_8
    iget-object v3, v1, Lcom/miui/antivirus/activity/VirusDetailActivity;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {v3}, Lcom/miui/antivirus/model/d;->j()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121b9d

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v8, v7

    invoke-virtual {v4, v5, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/miui/antivirus/activity/VirusDetailActivity$a;

    invoke-direct {v3, v1}, Lcom/miui/antivirus/activity/VirusDetailActivity$a;-><init>(Lcom/miui/antivirus/activity/VirusDetailActivity;)V

    invoke-virtual {v14, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/miui/antivirus/activity/VirusDetailActivity$b;

    invoke-direct {v3, v1}, Lcom/miui/antivirus/activity/VirusDetailActivity$b;-><init>(Lcom/miui/antivirus/activity/VirusDetailActivity;)V

    invoke-virtual {v13, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v1, Lcom/miui/antivirus/activity/VirusDetailActivity;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {v3}, Lcom/miui/antivirus/model/d;->x()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v4, v1, Lcom/miui/antivirus/activity/VirusDetailActivity;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {v4}, Lcom/miui/antivirus/model/d;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_6
    array-length v6, v4

    if-ge v9, v6, :cond_c

    aget-object v6, v4, v9

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x1

    if-gt v7, v8, :cond_9

    move v7, v8

    goto :goto_7

    :cond_9
    aget-object v7, v6, v8

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v1, Lcom/miui/antivirus/activity/VirusDetailActivity;->c:Ljava/util/List;

    const/4 v8, 0x0

    aget-object v11, v6, v8

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const/4 v7, 0x0

    aget-object v8, v6, v7

    const-string v7, "AntiDefraud"

    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    aget-object v5, v6, v7

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_7

    :cond_b
    const/4 v7, 0x1

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_c
    move v9, v5

    goto :goto_8

    :cond_d
    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1200fc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1200fa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_e
    :goto_9
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "risk_type"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "risk_detail"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    new-instance v0, Lcom/miui/antivirus/activity/VirusDetailActivity$e;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/activity/VirusDetailActivity$e;-><init>(Lcom/miui/antivirus/activity/VirusDetailActivity;Lcom/miui/antivirus/activity/VirusDetailActivity$a;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
