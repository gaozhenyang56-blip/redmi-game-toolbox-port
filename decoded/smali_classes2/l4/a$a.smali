.class Ll4/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll4/a;


# direct methods
.method constructor <init>(Ll4/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Ll4/a$a;->a:Ll4/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ll4/a;

    iget-object v0, p0, Ll4/a$a;->a:Ll4/a;

    const-string v1, "VIEW"

    invoke-virtual {v0, v1, p1}, Ll4/a;->g(Ljava/lang/String;Ll4/a;)V

    return-void
.end method
