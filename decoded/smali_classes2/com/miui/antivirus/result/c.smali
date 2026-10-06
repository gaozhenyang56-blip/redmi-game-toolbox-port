.class public abstract Lcom/miui/antivirus/result/c;
.super Lcom/miui/antivirus/result/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final HTTP:Ljava/lang/String; = "http"

.field public static final INTENT_END:Ljava/lang/String; = "end"

.field public static final INTENT_START:Ljava/lang/String; = "#Intent"

.field public static final TAG:Ljava/lang/String; = "AntivirusBaseModel"

.field public static final TYPE_ACTIVITY:Ljava/lang/String; = "003"

.field public static final TYPE_ADVERTISEMENT:Ljava/lang/String; = "001"

.field public static final TYPE_ADVERTISEMENT_TEST:Ljava/lang/String; = "0010"

.field public static final TYPE_FUNCTION:Ljava/lang/String; = "002"

.field public static final TYPE_LINE:Ljava/lang/String; = "005"

.field public static final TYPE_NEWS:Ljava/lang/String; = "004"

.field private static final serialVersionUID:J = -0x1e64dfc1090cc2eeL


# instance fields
.field protected isBottom:Z

.field protected isTop:Z

.field protected position:I

.field private temporary:Z

.field private testKey:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/result/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/antivirus/result/c;->position:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/result/c;->temporary:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antivirus/result/c;->isTop:Z

    iput-boolean v0, p0, Lcom/miui/antivirus/result/c;->isBottom:Z

    sget-object v0, Lcom/miui/antivirus/result/a$a;->b:Lcom/miui/antivirus/result/a$a;

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/result/a;->setBaseCardType(Lcom/miui/antivirus/result/a$a;)V

    return-void
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "com.mi.globalbrowser"

    const-string v1, "com.android.browser"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const-string v2, "#Intent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const-string v2, "end"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {p1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Leg/i;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p0

    const-string p1, "AntivirusBaseModel"

    const-string v0, "intent parseUri error : "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    const-string v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_1
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_2

    invoke-static {p0, p1, v0}, Leg/i;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0, p1, v0}, Leg/i;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, v1}, Leg/i;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p1, v1}, Leg/i;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Leg/i;->g(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_4
    invoke-static {p0, p1}, Leg/i;->g(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v4

    :catch_1
    :cond_5
    :goto_1
    return v3
.end method


# virtual methods
.method public bindView(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/n;)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/result/c;->position:I

    return-void
.end method

.method public bindView(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/n;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/antivirus/result/c;->bindView(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/n;)V

    return-void
.end method

.method public abstract getLayoutId()I
.end method

.method public getTestKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/c;->testKey:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/c;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isBottom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/result/c;->isBottom:Z

    return v0
.end method

.method public isTemporary()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/result/c;->temporary:Z

    return v0
.end method

.method public isTop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/result/c;->isTop:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setBottom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/result/c;->isBottom:Z

    return-void
.end method

.method public setTemporary(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/result/c;->temporary:Z

    return-void
.end method

.method public setTestKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/c;->testKey:Ljava/lang/String;

    return-void
.end method

.method public setTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/result/c;->isTop:Z

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/c;->type:Ljava/lang/String;

    return-void
.end method
