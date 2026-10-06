.class public Ll4/m;
.super Ll4/b;
.source "SourceFile"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll4/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ll4/b;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ll4/m;->l:I

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ll4/b;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ll4/m;->l:I

    const-string v1, "img"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ll4/m;->f:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ll4/m;->d:Ljava/lang/String;

    const-string v1, "summary"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ll4/m;->e:Ljava/lang/String;

    const-string v1, "cornerTip"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ll4/m;->h:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ll4/m;->g:Ljava/lang/String;

    const-string v1, "template"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ll4/m;->l:I

    const-string v1, "button"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ll4/m;->i:Ljava/lang/String;

    const-string v1, "dataId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ll4/m;->m:Ljava/lang/String;

    const-string v1, "browserOpen"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ll4/m;->j:Z

    const-string v0, "buttonColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll4/m;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MiActivity"

    const-string v1, "msg"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static e(Lorg/json/JSONObject;)Ll4/m;
    .locals 4

    const-string v0, "template"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    new-instance v0, Ll4/m;

    invoke-direct {v0, p0}, Ll4/m;-><init>(Lorg/json/JSONObject;)V

    iget-object p0, v0, Ll4/m;->g:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, v0, Ll4/m;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    const-string v1, "MiActivity"

    const-string v2, "msg"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Ll4/b;->a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V

    iget p1, p0, Ll4/m;->l:I

    const/4 p3, 0x2

    const p4, 0x7f080954

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll4/w;

    iget-object p2, p1, Ll4/w;->b:Landroid/widget/TextView;

    iget-object v0, p0, Ll4/m;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Ll4/w;->a:Landroid/widget/TextView;

    iget-object v0, p0, Ll4/m;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p0, Ll4/m;->l:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Ll4/m;->f:Ljava/lang/String;

    iget-object v0, p1, Ll4/w;->c:Landroid/widget/ImageView;

    sget-object v1, Lx4/o0;->h:Lrh/c;

    invoke-static {p2, v0, v1, p4}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Ll4/m;->f:Ljava/lang/String;

    iget-object p4, p1, Ll4/w;->c:Landroid/widget/ImageView;

    invoke-static {}, Ll4/o;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2, p4, v0}, Lx4/o0;->c(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object p1, p1, Ll4/w;->d:Landroid/widget/Button;

    if-eqz p1, :cond_6

    iget-object p2, p0, Ll4/m;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p0, Ll4/m;->l:I

    if-ne p2, p3, :cond_6

    iget p2, p0, Ll4/m;->k:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    goto :goto_1

    :cond_1
    const p2, 0x7f06014d

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll4/u;

    iget-object p2, p0, Ll4/m;->n:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x3

    if-ge p2, v0, :cond_3

    return-void

    :cond_3
    iget-object p2, p0, Ll4/m;->n:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll4/m;

    iget-object v0, p1, Ll4/u;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Ll4/m;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ll4/m;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Ll4/u;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Ll4/m;->f()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Ll4/u;->g:Landroid/widget/ImageView;

    sget-object v1, Lx4/o0;->h:Lrh/c;

    invoke-static {p2, v0, v1, p4}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :cond_4
    iget-object p2, p0, Ll4/m;->n:Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll4/m;

    iget-object v0, p1, Ll4/u;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Ll4/m;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ll4/m;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Ll4/u;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Ll4/m;->f()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Ll4/u;->h:Landroid/widget/ImageView;

    sget-object v1, Lx4/o0;->h:Lrh/c;

    invoke-static {p2, v0, v1, p4}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :cond_5
    iget-object p2, p0, Ll4/m;->n:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll4/m;

    iget-object p3, p1, Ll4/u;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Ll4/m;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ll4/m;->f()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p1, Ll4/u;->i:Landroid/widget/ImageView;

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Ll4/m;->f()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Ll4/u;->i:Landroid/widget/ImageView;

    sget-object p3, Lx4/o0;->h:Lrh/c;

    invoke-static {p2, p1, p3, p4}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public b()I
    .locals 2

    iget v0, p0, Ll4/m;->l:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0e0517

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0e051e

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0e051c

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0e0519

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0e0518

    goto :goto_0

    :cond_0
    const v0, 0x7f0e051a

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Ll4/m;)V
    .locals 1

    iget-object v0, p0, Ll4/m;->n:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll4/m;->n:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Ll4/m;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/m;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Ll4/m;->n:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/m;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Ll4/m;->l:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Ll4/m;->g:Ljava/lang/String;

    invoke-virtual {p0}, Ll4/m;->h()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Ll4/m;->j:Z

    iget v3, p0, Ll4/m;->l:I

    const/4 v4, 0x0

    const/16 v5, 0x3e9

    if-ne v3, v5, :cond_2

    const v3, 0x7f0b051d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Ll4/m;->n:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ll4/m;

    invoke-virtual {v0}, Ll4/m;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ll4/m;->h()Ljava/lang/String;

    move-result-object v2

    iget-boolean v0, v0, Ll4/m;->j:Z

    move-object v6, v2

    move v2, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :cond_0
    const v3, 0x7f0b051e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Ll4/m;->n:Ljava/util/List;

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v3, 0x7f0b051f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Ll4/m;->n:Ljava/util/List;

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    :try_start_0
    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_4

    invoke-static {p1, v0, v1}, Ll4/o;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_5
    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v0, "MiActivity"

    const-string v1, "msg"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method
