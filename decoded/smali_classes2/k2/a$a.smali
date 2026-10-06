.class Lk2/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk2/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lk2/a;


# direct methods
.method constructor <init>(Lk2/a;)V
    .locals 0

    iput-object p1, p0, Lk2/a$a;->a:Lk2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "CloudPhoneListService"

    const-string v1, "start doUpdate ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lk2/a$a;->a:Lk2/a;

    invoke-virtual {v1}, Lk2/a;->f()Z

    const-string v1, "end doUpdate ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lk2/a$a;->a:Lk2/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lk2/a;->e(Lk2/a;Z)V

    return-void
.end method
