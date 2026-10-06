.class public abstract Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;
.implements Lm2/d$b;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/appcompat/app/Fragment;",
        "Landroidx/loader/app/a$a<",
        "Landroid/database/Cursor;",
        ">;",
        "Lm2/d$b;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field protected a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

.field protected b:Lmiuix/nestedheader/widget/NestedHeaderLayout;

.field protected c:Lcom/miui/antispam/ui/activity/MainActivity;

.field protected d:Ll2/g;

.field e:Z

.field protected f:Landroid/widget/TextView;

.field protected g:Lcom/miui/maml/component/MamlView;

.field protected h:Landroid/widget/LinearLayout;

.field protected i:Landroid/widget/LinearLayout;

.field protected j:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;

.field protected k:Landroid/content/ContentResolver;

.field protected l:Ljava/lang/String;

.field protected m:Lmiuix/appcompat/app/AlertDialog;

.field private n:Z

.field private o:Z

.field private p:Landroid/view/View;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/ViewStub;

.field private s:Landroid/view/ViewStub;

.field protected t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public v:I

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    invoke-static {}, Lm2/j;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->e:Z

    sget-object v0, Lm2/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->n:Z

    invoke-static {}, Lx4/t;->p()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->o:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->t:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->u:Ljava/util/List;

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->v:I

    iput v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->w:I

    return-void
.end method

.method static synthetic b0(Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->p:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c0(Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->q:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->w:I

    return p1
.end method

.method static synthetic e0(Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->u:Ljava/util/List;

    return-object p0
.end method

.method private f0()V
    .locals 6

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->o:Z

    const v1, 0x7f0b036c

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->s:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->p:Landroid/view/View;

    const v2, 0x7f0b0374

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->g0()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->r:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->p:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    new-instance v2, Lcom/miui/maml/component/MamlView;

    iget-object v4, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->i0(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    invoke-direct {v2, v4, v0, v5}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->g:Lcom/miui/maml/component/MamlView;

    invoke-static {}, La8/k2;->u()I

    move-result v0

    mul-int/lit16 v0, v0, 0x1e0

    div-int/lit16 v0, v0, 0x438

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0708f8

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->p:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->g:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->p:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->g:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->g:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    :goto_1
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->q:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->m0()V

    return-void
.end method

.method private k0(I)I
    .locals 3

    instance-of v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;

    const v1, 0x7f121939

    const/4 v2, -0x1

    if-eqz v0, :cond_5

    if-eq p1, v2, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f1216d1

    return p1

    :pswitch_0
    const p1, 0x7f1216d6

    return p1

    :pswitch_1
    const p1, 0x7f1216c9

    return p1

    :pswitch_2
    const p1, 0x7f1216d3

    return p1

    :pswitch_3
    const p1, 0x7f1216d9

    return p1

    :pswitch_4
    const p1, 0x7f1216d4

    return p1

    :cond_0
    const p1, 0x7f1216c6

    return p1

    :cond_1
    const p1, 0x7f1216d2

    return p1

    :cond_2
    const p1, 0x7f1216c8

    return p1

    :cond_3
    :pswitch_5
    const p1, 0x7f1216c7

    return p1

    :cond_4
    return v1

    :cond_5
    if-eq p1, v2, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const p1, 0x7f120484

    return p1

    :pswitch_6
    const p1, 0x7f120491

    return p1

    :pswitch_7
    const p1, 0x7f120485

    return p1

    :pswitch_8
    const p1, 0x7f120495

    return p1

    :pswitch_9
    const p1, 0x7f120d57

    return p1

    :pswitch_a
    const p1, 0x7f120481

    return p1

    :pswitch_b
    const p1, 0x7f120d65

    return p1

    :pswitch_c
    const p1, 0x7f120d4e

    return p1

    :pswitch_d
    const p1, 0x7f120486

    return p1

    :pswitch_e
    const p1, 0x7f120d53

    return p1

    :pswitch_f
    const p1, 0x7f120494

    return p1

    :pswitch_10
    const p1, 0x7f120492

    return p1

    :cond_6
    const p1, 0x7f120493

    return p1

    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private m0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$a;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$a;-><init>(Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private r0(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-direct {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->u:Ljava/util/List;

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setItems(Ljava/util/List;)V

    iget v1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->w:I

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setSelectedItem(I)V

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setAnchorView(Landroid/view/View;)V

    new-instance p1, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$b;

    invoke-direct {p1, p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$b;-><init>(Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;)V

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setOnMenuListener(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;)V

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->show()V

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ll2/g;->setData(Ljava/util/List;)V

    return-void
.end method

.method public abstract g0()I
.end method

.method public abstract h0(Landroid/content/Context;)Ll2/g;
.end method

.method public abstract i0(Z)Ljava/lang/String;
.end method

.method public abstract j0()Ljava/lang/String;
.end method

.method l0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->p:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->g:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onPause()V

    :cond_1
    return-void
.end method

.method protected abstract n0(Z)V
.end method

.method public abstract o0(Landroid/view/ActionMode;Z)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->f:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->r0(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->p:Landroid/view/View;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->g:Lcom/miui/maml/component/MamlView;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->n:Z

    if-eqz v0, :cond_2

    const-string v0, "deactive"

    goto :goto_0

    :cond_2
    const-string v0, "active"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/maml/component/MamlView;->sendCommand(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->n:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->n:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "showTitle"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const p1, 0x7f13043e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/antispam/ui/activity/MainActivity;

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->k:Landroid/content/ContentResolver;

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-static {p1}, Lm2/d;->h(Landroid/content/Context;)Lm2/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lm2/d;->g(Lm2/d$b;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-static {v0}, Lm2/d;->h(Landroid/content/Context;)Lm2/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lm2/d;->l(Lm2/d$b;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->g:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->g:Lcom/miui/maml/component/MamlView;

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onExtraPaddingChanged(I)V

    int-to-float p1, p1

    sget v0, Ltm/e;->d:I

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const v0, 0x7f1307df

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/app/Fragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object p3, Lm2/a;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lm2/a;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->l:Ljava/lang/String;

    :cond_0
    new-instance p2, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;

    invoke-direct {p2, p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;-><init>(Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;)V

    iput-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->j:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;

    const p2, 0x7f0e018d

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b04d7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->h:Landroid/widget/LinearLayout;

    const p2, 0x7f0b07f6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iput-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->b:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    const p2, 0x7f0b0acd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->f:Landroid/widget/TextView;

    const p2, 0x7f0b0712

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->i:Landroid/widget/LinearLayout;

    const p2, 0x102000a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/antispam/ui/view/RecyclerViewExt;

    iput-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-virtual {p0, p2}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->h0(Landroid/content/Context;)Ll2/g;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    iget-object p3, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    iget-object p3, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->j:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;

    invoke-virtual {p2, p3, v0}, Ll2/b;->v(Landroid/app/Activity;Lcom/miui/antispam/ui/view/RecyclerViewExt$e;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/Fragment;->setHasOptionsMenu(Z)V

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->f:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b0375

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    iput-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->r:Landroid/view/ViewStub;

    const p2, 0x7f0b0376

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    iput-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->s:Landroid/view/ViewStub;

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    new-instance p3, Lmiuix/recyclerview/card/f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->g:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->g:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onResume()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method p0(I)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->f0()V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->p:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->g:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onResume()V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->g:Lcom/miui/maml/component/MamlView;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public q0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->i:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lm2/a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public abstract s0()V
.end method

.method public t0(Landroid/database/Cursor;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->t:Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->u:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->k0(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->j0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->t:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->t:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->u:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->k0(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->v:I

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->w:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->t:Ljava/util/ArrayList;

    iget v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iput v1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->v:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->w:I

    :cond_2
    return-void
.end method
