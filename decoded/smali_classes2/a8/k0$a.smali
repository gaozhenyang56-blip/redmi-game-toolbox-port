.class La8/k0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La8/k0;->k(Landroid/content/Context;Lcom/miui/gamebooster/service/IGameBooster;Ljava/lang/String;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, La8/k0$a;->a:Landroid/content/Context;

    iput-object p2, p0, La8/k0$a;->b:Ljava/lang/String;

    iput-object p3, p0, La8/k0$a;->c:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, La8/k0$a;->a:Landroid/content/Context;

    iget-object v1, p0, La8/k0$a;->b:Ljava/lang/String;

    iget-object v2, p0, La8/k0$a;->c:Landroid/os/UserHandle;

    invoke-static {v0, v1, v2}, La8/k0;->q(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method
