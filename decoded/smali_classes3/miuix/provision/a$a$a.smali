.class Lmiuix/provision/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/provision/a$a;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/provision/a$a;


# direct methods
.method constructor <init>(Lmiuix/provision/a$a;)V
    .locals 0

    iput-object p1, p0, Lmiuix/provision/a$a$a;->a:Lmiuix/provision/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lmiuix/provision/a$a$a;->a:Lmiuix/provision/a$a;

    iget-object v0, v0, Lmiuix/provision/a$a;->a:Lmiuix/provision/a;

    invoke-static {v0}, Lmiuix/provision/a;->c(Lmiuix/provision/a;)Lmiuix/provision/a$d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/provision/a$a$a;->a:Lmiuix/provision/a$a;

    iget-object v0, v0, Lmiuix/provision/a$a;->a:Lmiuix/provision/a;

    invoke-static {v0}, Lmiuix/provision/a;->a(Lmiuix/provision/a;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/provision/a$a$a;->a:Lmiuix/provision/a$a;

    iget-object v0, v0, Lmiuix/provision/a$a;->a:Lmiuix/provision/a;

    invoke-static {v0}, Lmiuix/provision/a;->c(Lmiuix/provision/a;)Lmiuix/provision/a$d;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/provision/a$d;->y()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/provision/a$a$a;->a:Lmiuix/provision/a$a;

    iget-object v0, v0, Lmiuix/provision/a$a;->a:Lmiuix/provision/a;

    invoke-static {v0}, Lmiuix/provision/a;->a(Lmiuix/provision/a;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/provision/a$a$a;->a:Lmiuix/provision/a$a;

    iget-object v0, v0, Lmiuix/provision/a$a;->a:Lmiuix/provision/a;

    invoke-static {v0}, Lmiuix/provision/a;->c(Lmiuix/provision/a;)Lmiuix/provision/a$d;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/provision/a$d;->V()V

    :cond_1
    :goto_0
    return-void
.end method
