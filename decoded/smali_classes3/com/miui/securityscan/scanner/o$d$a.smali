.class final Lcom/miui/securityscan/scanner/o$d$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/o$d;->c(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Ljava/lang/Boolean;",
        "Loj/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/securityscan/scanner/o$d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/scanner/o$d$a;

    invoke-direct {v0}, Lcom/miui/securityscan/scanner/o$d$a;-><init>()V

    sput-object v0, Lcom/miui/securityscan/scanner/o$d$a;->a:Lcom/miui/securityscan/scanner/o$d$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "full scan over isGpSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", virusCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/o$b;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VirusScanManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "getInstance()"

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/o$b;->f()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    sget-boolean p1, Lcom/miui/common/i;->a:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    const-string v2, "com.miui.securitymanager"

    invoke-static {p1, v2}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    sget-object p1, Lcom/miui/securityscan/scanner/n;->f:Lcom/miui/securityscan/scanner/n$b;

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/n$b;->a()Lcom/miui/securityscan/scanner/n;

    move-result-object p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/o$b;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v2, v0}, Lcom/miui/securityscan/scanner/n;->q(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {}, Lqf/c;->v()V

    :cond_2
    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/o$b;->f()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/o$b;->f()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/miui/securityscan/scanner/n;->f:Lcom/miui/securityscan/scanner/n$b;

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/n$b;->a()Lcom/miui/securityscan/scanner/n;

    move-result-object p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/miui/securityscan/scanner/n;->p(Landroid/content/Context;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/scanner/o$d$a;->a(Z)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
