.class Lmi/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmi/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmi/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmi/c;


# direct methods
.method constructor <init>(Lmi/c;)V
    .locals 0

    iput-object p1, p0, Lmi/c$c;->a:Lmi/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 0

    iget-object p1, p0, Lmi/c$c;->a:Lmi/c;

    invoke-static {p1}, Lmi/c;->a(Lmi/c;)Loi/a;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "SdkManager"

    const-string p2, "download finished, use new analytics."

    invoke-static {p1, p2}, Lni/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lmi/c$c;->a:Lmi/c;

    invoke-static {p1}, Lmi/c;->e(Lmi/c;)Loi/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Loi/a;->init()V

    :cond_0
    iget-object p2, p0, Lmi/c$c;->a:Lmi/c;

    invoke-static {p2, p1}, Lmi/c;->b(Lmi/c;Loi/a;)Loi/a;

    iget-object p1, p0, Lmi/c$c;->a:Lmi/c;

    invoke-static {p1}, Lmi/c;->a(Lmi/c;)Loi/a;

    move-result-object p2

    invoke-static {p1, p2}, Lmi/c;->A(Lmi/c;Loi/a;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lmi/c$c;->a:Lmi/c;

    invoke-static {p1}, Lmi/c;->c(Lmi/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lni/b;->d(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_2
    :goto_0
    return-void
.end method
