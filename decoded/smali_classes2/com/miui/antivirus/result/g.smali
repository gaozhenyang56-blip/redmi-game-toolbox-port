.class public Lcom/miui/antivirus/result/g;
.super Lcom/miui/antivirus/result/c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antivirus/result/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/antivirus/result/g;->s:Ljava/util/ArrayList;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x98e4a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/result/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/antivirus/result/g;->k:I

    iput v0, p0, Lcom/miui/antivirus/result/g;->l:I

    iput v0, p0, Lcom/miui/antivirus/result/g;->m:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/result/g;->n:Z

    iput-boolean v0, p0, Lcom/miui/antivirus/result/g;->o:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/result/g;->r:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/antivirus/result/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/antivirus/result/g;->k:I

    iput v0, p0, Lcom/miui/antivirus/result/g;->l:I

    iput v0, p0, Lcom/miui/antivirus/result/g;->m:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/result/g;->n:Z

    iput-boolean v0, p0, Lcom/miui/antivirus/result/g;->o:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/antivirus/result/g;->r:Ljava/util/List;

    const-string v1, "functionId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/antivirus/result/g;->a:I

    const-string v1, "template"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/antivirus/result/g;->b:I

    const-string v1, "icon"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/g;->c:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/g;->e:Ljava/lang/String;

    const-string v1, "summary"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/g;->f:Ljava/lang/String;

    const-string v1, "button"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/g;->j:Ljava/lang/String;

    const-string v1, "action"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/g;->g:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/antivirus/result/g;->h:I

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/g;->i:Ljava/lang/String;

    const-string v1, "buttonColor2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/antivirus/result/g;->k:I

    iput-boolean v3, p0, Lcom/miui/antivirus/result/g;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Function"

    const-string v4, "msg"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const-string v1, "btnBgColorOpenN2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "btnBgColorOpenP2"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_1
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/antivirus/result/g;->l:I

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/antivirus/result/g;->m:I

    iput-boolean v3, p0, Lcom/miui/antivirus/result/g;->o:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const-string v1, "images"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/g;->d:Ljava/lang/String;

    :cond_2
    const-string v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/result/g;->q:Ljava/lang/String;

    iget p1, p0, Lcom/miui/antivirus/result/g;->a:I

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/miui/antivirus/result/c;->setTemporary(Z)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/miui/antivirus/result/g;Lcom/miui/antivirus/result/g;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/result/g;->r(Lcom/miui/antivirus/result/g;Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;ZLcom/miui/antivirus/result/n;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/g;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    iget p1, p0, Lcom/miui/antivirus/result/g;->h:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/miui/antivirus/result/g;->p:Z

    if-eqz p1, :cond_0

    const p1, 0x7f120546

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/antivirus/result/g;->j:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/antivirus/result/g;->f:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_2

    iget-object p1, p0, Lcom/miui/antivirus/result/g;->c:Ljava/lang/String;

    if-eqz p6, :cond_1

    sget-object p2, Lx4/o0;->h:Lrh/c;

    invoke-static {p1, p4, p2}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    goto :goto_1

    :cond_1
    sget-object p2, Lx4/o0;->c:Lrh/c;

    invoke-virtual {p7}, Lcom/miui/antivirus/result/n;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p1, p4, p2, p3}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    if-eqz p5, :cond_4

    iget-object p1, p0, Lcom/miui/antivirus/result/g;->d:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/antivirus/result/g;->d:Ljava/lang/String;

    sget-object p2, Lx4/o0;->c:Lrh/c;

    invoke-virtual {p7}, Lcom/miui/antivirus/result/n;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p1, p5, p2, p3}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/16 p1, 0x8

    :goto_2
    invoke-virtual {p5, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private c(Lcom/miui/antivirus/result/q;)V
    .locals 5

    invoke-static {}, Lcom/miui/antivirus/result/h;->g()Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/antivirus/result/q;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/antivirus/result/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/miui/antivirus/result/q;->c:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/antivirus/result/g;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Lcom/miui/antivirus/result/q;->a:I

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg_icon://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/antivirus/result/q;->d:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    sget-object v4, Lx4/o0;->c:Lrh/c;

    invoke-static {v2, v3, v4}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static e(Lorg/json/JSONObject;)Lcom/miui/antivirus/result/g;
    .locals 3

    const-string v0, "functionId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "action"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/result/h;->h(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    sget-object v1, Lcom/miui/antivirus/result/g;->s:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    const-string v0, "template"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    return-object v2

    :cond_2
    new-instance v0, Lcom/miui/antivirus/result/g;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/result/g;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private r(Lcom/miui/antivirus/result/g;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121704

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/result/g$c;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/antivirus/result/g$c;-><init>(Lcom/miui/antivirus/result/g;Landroid/content/Context;Lcom/miui/antivirus/result/g;)V

    const p1, 0x104000a

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.gamebooster.action.ACCESS_MAINACTIVITY"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "track_gamebooster_enter_way"

    const-string v2, "00004"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "miui.intent.action.POWER_MANAGER"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "enter_homepage_way"

    const-string v1, "00003"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Function"

    const-string v0, "viewActionActivity"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Function"

    const-string p2, "viewActionActivity"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public bindView(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/n;)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/antivirus/result/c;->bindView(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/n;)V

    iget p1, p0, Lcom/miui/antivirus/result/g;->a:I

    const/16 p3, 0x14

    if-eq p1, p3, :cond_7

    const/16 p3, 0x19

    if-eq p1, p3, :cond_6

    const/16 p3, 0x1c

    if-eq p1, p3, :cond_5

    const/16 p3, 0x22

    if-eq p1, p3, :cond_4

    const/16 p3, 0x2d

    if-eq p1, p3, :cond_3

    const p3, 0x98e4a1

    if-eq p1, p3, :cond_2

    const/16 p3, 0x2a

    if-eq p1, p3, :cond_1

    const/16 p3, 0x2b

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "v_rs_cleanmaster"

    goto :goto_0

    :cond_1
    const-string p1, "v_rs_gamebooster"

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/antivirus/result/g;->q:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string p1, "virus_scan"

    invoke-static {p1}, Lc4/i$a;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/miui/antivirus/result/g$a;

    invoke-direct {p1, p0}, Lcom/miui/antivirus/result/g$a;-><init>(Lcom/miui/antivirus/result/g;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    :cond_4
    const-string p1, "v_rs_applock"

    goto :goto_0

    :cond_5
    const-string p1, "v_rs_app_manage"

    goto :goto_0

    :cond_6
    const-string p1, "v_rs_auto_start"

    goto :goto_0

    :cond_7
    const-string p1, "v_rs_power_optimazation"

    :goto_0
    invoke-static {p1}, Lq2/b$b;->u(Ljava/lang/String;)V

    :goto_1
    iget p1, p0, Lcom/miui/antivirus/result/g;->b:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    const/4 p4, 0x5

    if-eq p1, p4, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/result/q;

    invoke-direct {p0, p1}, Lcom/miui/antivirus/result/g;->c(Lcom/miui/antivirus/result/q;)V

    goto :goto_3

    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/result/t;

    iget-object v1, p1, Lcom/miui/antivirus/result/t;->b:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/miui/antivirus/result/t;->c:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/miui/antivirus/result/t;->f:Landroid/widget/Button;

    iget-object v4, p1, Lcom/miui/antivirus/result/t;->d:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/miui/antivirus/result/t;->e:Landroid/widget/ImageView;

    const/4 v6, 0x0

    goto :goto_2

    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/result/t;

    iget-object v1, p1, Lcom/miui/antivirus/result/t;->b:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/miui/antivirus/result/t;->c:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/miui/antivirus/result/t;->f:Landroid/widget/Button;

    iget-object v4, p1, Lcom/miui/antivirus/result/t;->d:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/miui/antivirus/result/t;->e:Landroid/widget/ImageView;

    const/4 v6, 0x1

    :goto_2
    move-object v0, p0

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/antivirus/result/g;->b(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;ZLcom/miui/antivirus/result/n;)V

    :goto_3
    invoke-static {}, Lx4/y1;->f()Z

    move-result p1

    if-eqz p1, :cond_b

    :try_start_0
    new-array p1, p3, [Landroid/view/View;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p3, p3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p2, p3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_b
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antivirus/result/g;->d()Lcom/miui/antivirus/result/g;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/miui/antivirus/result/g;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    check-cast v0, Lcom/miui/antivirus/result/g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    const-string v2, "Function"

    const-string v3, "msg"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    check-cast v0, Lcom/miui/antivirus/result/g;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/result/g;->a:I

    return v0
.end method

.method public getLayoutId()I
    .locals 3

    iget v0, p0, Lcom/miui/antivirus/result/g;->b:I

    const/4 v1, 0x1

    const v2, 0x7f0e051d

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f0e051b

    goto :goto_0

    :cond_1
    const v2, 0x7f0e0515

    :cond_2
    :goto_0
    return v2
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/g;->j:Ljava/lang/String;

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/result/g;->a:I

    return-void
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/result/g;->h:I

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/g;->c:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/g;->f:Ljava/lang/String;

    return-void
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/result/g;->b:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/miui/antivirus/result/g;->a:I

    instance-of v1, p1, Landroid/widget/Button;

    if-nez v1, :cond_0

    const v1, 0x7f0b01d8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/activity/MainActivity;

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/16 v1, 0x14

    if-eq v0, v1, :cond_7

    const/16 v1, 0x19

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const v1, 0x98e4a1

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const-string v0, "v_rs_cleaner_recall"

    invoke-static {v0}, Lq2/b$b;->t(Ljava/lang/String;)V

    const-string v0, "virus_scan"

    invoke-static {v0}, Lc4/i$a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->d:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p1, v0}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1, v0}, Lcom/miui/securityscan/shortcut/d;->c(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    :cond_1
    invoke-virtual {p1, p0}, Lcom/miui/antivirus/activity/MainActivity;->E1(Lcom/miui/antivirus/result/a;)V

    const v0, 0x7f120534

    invoke-static {p1, v0}, Lx4/y1;->j(Landroid/content/Context;I)V

    goto/16 :goto_2

    :pswitch_1
    const-string v0, "v_rs_power_optimazation"

    invoke-static {v0}, Lq2/b$b;->t(Ljava/lang/String;)V

    const-string v0, "miui.intent.action.POWER_MANAGER"

    goto :goto_1

    :pswitch_2
    const-string v0, "v_rs_cleanmaster"

    invoke-static {v0}, Lq2/b$b;->t(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "v_rs_gamebooster"

    invoke-static {v0}, Lq2/b$b;->t(Ljava/lang/String;)V

    const-string v0, "com.miui.gamebooster.action.ACCESS_MAINACTIVITY"

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/miui/antivirus/result/g;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f120210

    invoke-static {p1, v0}, Lx4/y1;->j(Landroid/content/Context;I)V

    :cond_3
    iget-object p1, p0, Lcom/miui/antivirus/result/g;->q:Ljava/lang/String;

    invoke-static {p1}, Lq2/b$b;->t(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    const-string v0, "v_rs_applock"

    invoke-static {v0}, Lq2/b$b;->t(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "enter_way"

    const-string v2, "00009"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.miui.securitycenter.action.TRANSITION"

    invoke-static {p1, v1, v0}, Lcom/miui/antivirus/result/g;->v(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_5
    const-string v0, "v_rs_app_manage"

    invoke-static {v0}, Lq2/b$b;->t(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.GARBAGE_UNINSTALL_APPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1, v0}, Lc4/f;->g(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    :cond_6
    const-string v0, "v_rs_auto_start"

    invoke-static {v0}, Lq2/b$b;->t(Ljava/lang/String;)V

    const-string v0, "miui.intent.action.OP_AUTO_START"

    goto :goto_1

    :cond_7
    const-string v0, "com.miui.powercenter.PowerShutdownOnTime"

    goto :goto_1

    :cond_8
    const-string v0, "miui.intent.action.GARBAGE_DEEPCLEAN"

    :goto_1
    invoke-static {p1, v0}, Lcom/miui/antivirus/result/g;->u(Landroid/content/Context;Ljava/lang/String;)V

    :catch_0
    :goto_2
    iget-object p1, p0, Lcom/miui/antivirus/result/g;->q:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/miui/antivirus/result/g;->a:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/result/g;->q:Ljava/lang/String;

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/g;->e:Ljava/lang/String;

    return-void
.end method

.method public s(Lcom/miui/antivirus/result/g;Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/miui/antivirus/result/g;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f120474

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/miui/antivirus/result/g$b;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/antivirus/result/g$b;-><init>(Lcom/miui/antivirus/result/g;Lcom/miui/antivirus/result/g;Landroid/content/Context;)V

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
