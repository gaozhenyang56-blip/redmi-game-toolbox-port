.class public Lcom/miui/antivirus/ui/AppResultView;
.super Lcom/miui/antivirus/ui/e;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/CheckBox;

.field private j:Lcom/miui/antivirus/model/d;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/view/ViewStub;

.field private n:Landroid/view/ViewStub;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/ui/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic d(Lcom/miui/antivirus/ui/AppResultView;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/AppResultView;->i:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/antivirus/ui/AppResultView;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->i:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic f(Lcom/miui/antivirus/ui/AppResultView;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/AppResultView;->h:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/antivirus/ui/AppResultView;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->h:Landroid/widget/Button;

    return-object p1
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->e:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/miui/antivirus/model/d$b;->b:Lcom/miui/antivirus/model/d$b;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->h()Lcom/miui/antivirus/model/d$b;

    move-result-object v0

    const/16 v2, 0x14

    if-eq v1, v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxEms(I)V

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-static {}, Lx4/t;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lx4/a0;->z(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->e:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public h(Lcom/miui/antivirus/model/d;)V
    .locals 9

    iput-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->i:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->k:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/antivirus/ui/AppResultView;->i()V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget-object v0, Lcom/miui/antivirus/ui/AppResultView$c;->b:[I

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->h()Lcom/miui/antivirus/model/d$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const v3, 0x7f12047b

    const-string v4, "pkg_icon://"

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->h:Landroid/widget/Button;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->m:Landroid/view/ViewStub;

    new-instance v3, Lcom/miui/antivirus/ui/AppResultView$b;

    invoke-direct {v3, p0}, Lcom/miui/antivirus/ui/AppResultView$b;-><init>(Lcom/miui/antivirus/ui/AppResultView;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->m:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->h:Landroid/widget/Button;

    const v3, 0x7f1202b8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    invoke-virtual {v3}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/antivirus/ui/AppResultView;->d:Landroid/widget/ImageView;

    sget-object v4, Lx4/o0;->f:Lrh/c;

    invoke-static {v0, v3, v4}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->p:Landroid/view/View;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/a;->isBottom()Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    :pswitch_1
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->r()Lo2/g$k;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->s()Lo2/g$l;

    move-result-object v3

    sget-object v6, Lcom/miui/antivirus/ui/AppResultView$c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v6, v0

    const-string v6, ""

    const-string v7, "risk_type"

    if-eq v0, v5, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    goto/16 :goto_6

    :cond_4
    sget-object v0, Lo2/g$l;->d:Lo2/g$l;

    if-ne v3, v0, :cond_5

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->f:Landroid/widget/TextView;

    const v3, 0x7f1202b3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->x()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/miui/antivirus/ui/AppResultView;->r:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->f:Landroid/widget/TextView;

    const v3, 0x7f1202b5

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apk_icon://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    invoke-virtual {v3}, Lcom/miui/antivirus/model/d;->u()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/antivirus/ui/AppResultView;->d:Landroid/widget/ImageView;

    sget-object v4, Lx4/o0;->f:Lrh/c;

    invoke-static {v0, v3, v4}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    goto/16 :goto_6

    :cond_7
    sget-object v0, Lo2/g$l;->d:Lo2/g$l;

    if-ne v3, v0, :cond_8

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->f:Landroid/widget/TextView;

    const v3, 0x7f1202b2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->x()Ljava/lang/String;

    move-result-object v0

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/miui/antivirus/ui/AppResultView;->r:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->f:Landroid/widget/TextView;

    const v3, 0x7f1202b4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v3, v2

    move v6, v3

    :goto_4
    array-length v7, v0

    if-ge v3, v7, :cond_d

    aget-object v7, v0, v3

    const-string v8, "AntiDefraud"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    aget-object v7, v0, v3

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    if-gt v8, v5, :cond_a

    goto :goto_5

    :cond_a
    aget-object v6, v7, v5

    const-string v7, "danger"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :cond_b
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    move v6, v2

    :cond_d
    if-eqz v6, :cond_e

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f1200fb

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    invoke-virtual {v3}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :goto_6
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->i:Landroid/widget/CheckBox;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->n:Landroid/view/ViewStub;

    new-instance v3, Lcom/miui/antivirus/ui/AppResultView$a;

    invoke-direct {v3, p0, p1}, Lcom/miui/antivirus/ui/AppResultView$a;-><init>(Lcom/miui/antivirus/ui/AppResultView;Lcom/miui/antivirus/model/d;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->n:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_7

    :cond_f
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->i:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->z()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_7
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/e;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->r()Lo2/g$k;

    move-result-object v1

    sget-object v3, Lo2/g$k;->a:Lo2/g$k;

    if-ne v1, v3, :cond_10

    move v2, v5

    :cond_10
    invoke-static {v0, p1, v2}, Lw2/p;->e(Landroid/content/Context;Lcom/miui/antivirus/model/d;Z)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :pswitch_2
    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->o:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->e:Landroid/widget/TextView;

    const v0, 0x7f12158b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->f:Landroid/widget/TextView;

    const v0, 0x7f12158c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080fcc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :pswitch_3
    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->o:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->e:Landroid/widget/TextView;

    const v0, 0x7f121590

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->f:Landroid/widget/TextView;

    const v0, 0x7f12158e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->d:Landroid/widget/ImageView;

    sget-object v0, Lx4/o0;->f:Lrh/c;

    const-string v1, "drawable://2131231586"

    invoke-static {v1, p1, v0}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :goto_8
    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->g:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_a

    :pswitch_4
    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->o:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->e:Landroid/widget/TextView;

    const v0, 0x7f121591

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->f:Landroid/widget/TextView;

    const v0, 0x7f12158f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->d:Landroid/widget/ImageView;

    sget-object v0, Lx4/o0;->f:Lrh/c;

    const-string v1, "pkg_icon://com.android.mms"

    invoke-static {v1, p1, v0}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->g:Landroid/widget/Button;

    const v0, 0x7f120473

    goto :goto_9

    :pswitch_5
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->e:Landroid/widget/TextView;

    const v1, 0x7f1202bb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/antivirus/ui/e;->c:Landroid/content/Context;

    const v3, 0x7f1202bc

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->i()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->d:Landroid/widget/ImageView;

    sget-object v1, Lx4/o0;->f:Lrh/c;

    invoke-static {p1, v0, v1}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->g:Landroid/widget/Button;

    const v0, 0x7f1202ba

    :goto_9
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a

    :pswitch_6
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Lx4/h0;->b(Landroid/view/View;)Z

    check-cast p1, Lcom/miui/antivirus/model/h;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/h;->X()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->e:Landroid/widget/TextView;

    const v0, 0x7f120c06

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->f:Landroid/widget/TextView;

    const v0, 0x7f1202bd

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->g:Landroid/widget/Button;

    const v0, 0x7f120472

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080fcd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_11
    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->e:Landroid/widget/TextView;

    const v0, 0x7f1202bf

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->f:Landroid/widget/TextView;

    const v0, 0x7f1202be

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->g:Landroid/widget/Button;

    const v0, 0x7f12047e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->d:Landroid/widget/ImageView;

    sget-object v0, Lx4/o0;->f:Lrh/c;

    const-string v1, "pkg_icon://com.android.updater"

    invoke-static {v1, p1, v0}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->h()Lcom/miui/antivirus/model/d$b;

    move-result-object p1

    sget-object v0, Lcom/miui/antivirus/model/d$b;->b:Lcom/miui/antivirus/model/d$b;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    invoke-virtual {p1, p2}, Lcom/miui/antivirus/model/d;->P(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/e;->c:Landroid/content/Context;

    invoke-static {p1}, Lo2/g;->J(Landroid/content/Context;)Lo2/g;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    invoke-virtual {p1, p2}, Lo2/g;->r(Lcom/miui/antivirus/model/d;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->h:Landroid/widget/Button;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->l:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->h()Lcom/miui/antivirus/model/d$b;

    move-result-object p1

    sget-object v0, Lcom/miui/antivirus/model/d$b;->b:Lcom/miui/antivirus/model/d$b;

    if-ne p1, v0, :cond_2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antivirus/ui/e;->c:Landroid/content/Context;

    const-class v1, Lcom/miui/antivirus/activity/VirusDetailActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antivirus/ui/e;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/antivirus/ui/e;->b:Lw4/e;

    const/16 v0, 0x3f4

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    invoke-virtual {p1, v0, v1}, Lw4/e;->a(ILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->t:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/antivirus/ui/AppResultView;->i()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/miui/antivirus/ui/e;->onFinishInflate()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->t:Landroid/content/res/Configuration;

    const v0, 0x7f0b0506

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->d:Landroid/widget/ImageView;

    const v0, 0x7f0b0bc9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->e:Landroid/widget/TextView;

    const v0, 0x7f0b0b21

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->f:Landroid/widget/TextView;

    const v0, 0x7f0b01d8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->g:Landroid/widget/Button;

    const v0, 0x7f0b05a9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->m:Landroid/view/ViewStub;

    const v0, 0x7f0b0232

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->n:Landroid/view/ViewStub;

    const v0, 0x7f0b01e5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->k:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0576

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0bf5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->o:Landroid/view/View;

    const v0, 0x7f0b018a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->p:Landroid/view/View;

    const v0, 0x7f0b0d31

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->r:Landroid/widget/TextView;

    const v0, 0x7f0b0a8f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->s:Landroid/widget/TextView;

    const v0, 0x7f0b0d91

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    sget-object p1, Lcom/miui/antivirus/ui/AppResultView$c;->b:[I

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->h()Lcom/miui/antivirus/model/d$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p1, v1}, Lcom/miui/antivirus/model/a;->f(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->i()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/miui/antivirus/model/a;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    iget-object v1, p0, Lcom/miui/antivirus/ui/e;->c:Landroid/content/Context;

    invoke-virtual {p0, p1, v1}, Lcom/miui/antivirus/ui/e;->c(Lcom/miui/antivirus/model/a;Landroid/content/Context;)V

    goto :goto_3

    :cond_1
    invoke-static {}, Lef/d0;->a()I

    move-result p1

    const/4 v1, 0x5

    if-lt p1, v1, :cond_4

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    check-cast p1, Lcom/miui/antivirus/model/h;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/h;->X()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    invoke-virtual {p1, v0}, Lcom/miui/antivirus/model/a;->f(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    iget-object v1, p0, Lcom/miui/antivirus/ui/e;->c:Landroid/content/Context;

    const v2, 0x7f121730

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/miui/antivirus/model/a;->f(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->j:Lcom/miui/antivirus/model/d;

    iget-object v1, p0, Lcom/miui/antivirus/ui/e;->c:Landroid/content/Context;

    const v2, 0x7f121732

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    :goto_3
    return v0
.end method
