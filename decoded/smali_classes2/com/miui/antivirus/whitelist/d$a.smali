.class Lcom/miui/antivirus/whitelist/d$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/whitelist/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/miui/antivirus/model/d;

.field final synthetic b:Lcom/miui/antivirus/whitelist/d;


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/whitelist/d;Lcom/miui/antivirus/model/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/d$a;->b:Lcom/miui/antivirus/whitelist/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/antivirus/whitelist/d$a;->a:Lcom/miui/antivirus/model/d;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10

    iget-object p1, p0, Lcom/miui/antivirus/whitelist/d$a;->a:Lcom/miui/antivirus/model/d;

    invoke-static {p1}, Lcom/miui/antivirus/whitelist/d;->a(Lcom/miui/antivirus/model/d;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/miui/antivirus/whitelist/d$a;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->u()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw2/t;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/antivirus/whitelist/d$a;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->n()Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v9, p1

    if-nez v9, :cond_2

    return-object v0

    :cond_2
    iget-object p1, p0, Lcom/miui/antivirus/whitelist/d$a;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->r()Lo2/g$k;

    move-result-object p1

    sget-object v1, Lo2/g$k;->a:Lo2/g$k;

    if-ne p1, v1, :cond_3

    const-string p1, "INSTALLED_APP"

    goto :goto_0

    :cond_3
    const-string p1, "UNINSTALLED_APK"

    :goto_0
    move-object v2, p1

    iget-object p1, p0, Lcom/miui/antivirus/whitelist/d$a;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->s()Lo2/g$l;

    move-result-object p1

    sget-object v1, Lo2/g$l;->b:Lo2/g$l;

    if-eq p1, v1, :cond_5

    iget-object p1, p0, Lcom/miui/antivirus/whitelist/d$a;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->s()Lo2/g$l;

    move-result-object p1

    sget-object v1, Lo2/g$l;->d:Lo2/g$l;

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "trojan"

    goto :goto_2

    :cond_5
    :goto_1
    const-string p1, "riskapp"

    :goto_2
    move-object v3, p1

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d$a;->b:Lcom/miui/antivirus/whitelist/d;

    iget-object p1, p0, Lcom/miui/antivirus/whitelist/d$a;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->i()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/miui/antivirus/whitelist/d$a;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->x()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/miui/antivirus/whitelist/d$a;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->u()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/miui/antivirus/whitelist/d$a;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/miui/antivirus/whitelist/d$a;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->y()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v9}, Lcom/miui/antivirus/whitelist/d;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d$a;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/d;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/securityscan/scanner/ScoreManager;->C(Ljava/lang/String;)V

    return-object v0
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/whitelist/d$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/whitelist/d$a;->b(Ljava/lang/Void;)V

    return-void
.end method
