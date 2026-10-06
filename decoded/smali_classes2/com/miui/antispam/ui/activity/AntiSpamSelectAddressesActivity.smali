.class public Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;
.super Lcom/miui/powercenter/autotask/BaseSettingActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$f;
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/String; = "AntiSpamSelectAddressesActivity"


# instance fields
.field private d:Z

.field private e:I

.field private f:I

.field private g:Ll2/h;

.field private h:Landroid/widget/ExpandableListView;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antispam/db/vo/ProvinceVo;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroidx/appcompat/app/ActionBar;

.field private k:Landroid/widget/CheckBox;

.field private l:Landroid/widget/CheckBox;

.field private m:Lmiuix/appcompat/app/AlertDialog;

.field private n:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/BaseSettingActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->i:Ljava/util/List;

    return-void
.end method

.method private A0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/antispam/db/vo/ProvinceVo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->C0()V

    return-void
.end method

.method private B0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->m:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->u0()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->x0()V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->m:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private C0()V
    .locals 6

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->f:I

    if-lez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->f:I

    if-lez v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1217ef

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const v1, 0x7f1217ee

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->g:Ll2/h;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static synthetic i0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->v0()V

    return-void
.end method

.method public static synthetic j0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->w0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic k0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->s0(I)V

    return-void
.end method

.method static synthetic l0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->C0()V

    return-void
.end method

.method static synthetic m0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->y0()V

    return-void
.end method

.method static synthetic p0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic q0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->A0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic r0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method private s0(I)V
    .locals 1

    iget v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->f:I

    return-void
.end method

.method private t0()V
    .locals 1

    new-instance v0, Lcom/miui/antispam/ui/activity/b;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/b;-><init>(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private u0()V
    .locals 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e04bd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->k:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->d:Z

    if-eqz v3, :cond_0

    const v3, 0x7f1217d3

    goto :goto_0

    :cond_0
    const v3, 0x7f120029

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->l:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->d:Z

    if-eqz v3, :cond_1

    const v3, 0x7f1217d5

    goto :goto_1

    :cond_1
    const v3, 0x7f120024

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v3, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->d:Z

    if-eqz v3, :cond_2

    const v3, 0x7f12069a

    goto :goto_2

    :cond_2
    const v3, 0x7f1206c9

    :goto_2
    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->d:Z

    if-eqz v3, :cond_3

    const v3, 0x7f120699

    goto :goto_3

    :cond_3
    const v3, 0x7f1206c8

    :goto_3
    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v3, Lcom/miui/antispam/ui/activity/a;

    invoke-direct {v3, p0}, Lcom/miui/antispam/ui/activity/a;-><init>(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)V

    invoke-virtual {v0, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->m:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private synthetic v0()V
    .locals 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {p0}, Lm2/f;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$e;

    invoke-direct {v3, p0}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$e;-><init>(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->n:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$f;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->o:Ljava/lang/String;

    const-string v2, "Json transform exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic w0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->z0()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private x0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->k:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method private y0()V
    .locals 1

    iget v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->f:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->B0()V

    :cond_0
    return-void
.end method

.method private z0()V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/antispam/db/vo/ProvinceVo;

    invoke-virtual {v3}, Lcom/miui/antispam/db/vo/ProvinceVo;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/miui/antispam/db/vo/ProvinceVo;->getCityList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/antispam/db/vo/CityVo;

    invoke-virtual {v4}, Lcom/miui/antispam/db/vo/CityVo;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/miui/antispam/db/vo/CityVo;->getCityCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/miui/antispam/db/vo/CityVo;->getCityName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->k:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v8, v5

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->k:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    move v8, v3

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    move v8, v2

    goto :goto_1

    :cond_5
    move v8, v4

    :goto_1
    if-le v8, v4, :cond_6

    new-array v2, v5, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/Integer;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [Ljava/lang/Integer;

    iget v10, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->e:I

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->d:Z

    xor-int/lit8 v11, v0, 0x1

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lm2/f;->N(Landroid/content/Context;[Ljava/lang/String;I[Ljava/lang/Integer;II)V

    :cond_6
    return-void
.end method


# virtual methods
.method protected d0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$d;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$d;-><init>(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)V

    return-object v0
.end method

.method protected e0()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1217ee

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f0()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/BaseSettingActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0058

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_black"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->d:Z

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->e:I

    new-instance p1, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$f;

    invoke-direct {p1, p0}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$f;-><init>(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)V

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->n:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$f;

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->t0()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->j:Landroidx/appcompat/app/ActionBar;

    iget-object p1, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    const p1, 0x7f0b06cc

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ExpandableListView;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->h:Landroid/widget/ExpandableListView;

    new-instance p1, Ll2/h;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->i:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Ll2/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->g:Ll2/h;

    new-instance v0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$a;-><init>(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)V

    invoke-virtual {p1, v0}, Ll2/h;->b(Ll2/h$d;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->h:Landroid/widget/ExpandableListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->h:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->g:Ll2/h;

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->h:Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$b;-><init>(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->h:Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$c;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$c;-><init>(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->n:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->n:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$f;

    :cond_0
    return-void
.end method
