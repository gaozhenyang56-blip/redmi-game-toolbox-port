.class Lf7/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf7/b$a;->c(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic k:Lf7/b$a;


# direct methods
.method constructor <init>(Lf7/b$a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lf7/b$a$a;->k:Lf7/b$a;

    iput-object p2, p0, Lf7/b$a$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public v1(Landroid/os/IBinder;)Z
    .locals 2

    invoke-static {p1}, Lcom/miui/gamebooster/service/IFreeformWindow$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IFreeformWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lf7/b$a$a;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/miui/gamebooster/service/IFreeformWindow;->Y7(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FreeformWindowUtils"

    const-string v1, "set quickreply apps error when app added"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object p1, p0, Lf7/b$a$a;->k:Lf7/b$a;

    invoke-static {p1}, Lf7/b$a;->a(Lf7/b$a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf7/a;->b(Landroid/content/Context;)Lf7/a;

    move-result-object p1

    invoke-virtual {p1}, Lf7/a;->c()V

    const/4 p1, 0x0

    return p1
.end method
