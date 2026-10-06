.class Ll4/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll4/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll4/a;


# direct methods
.method constructor <init>(Ll4/a;)V
    .locals 0

    iput-object p1, p0, Ll4/a$c;->a:Ll4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ll4/a$c;->a:Ll4/a;

    iget-object v1, v0, Ll4/b;->b:Ll4/f;

    invoke-virtual {v1, v0}, Ll4/f;->c(Ll4/b;)V

    iget-object v0, p0, Ll4/a$c;->a:Ll4/a;

    invoke-static {v0}, Ll4/a;->e(Ll4/a;)I

    move-result v0

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ll4/a$c;->a:Ll4/a;

    invoke-static {v0}, Ll4/a;->e(Ll4/a;)I

    move-result v0

    const/16 v1, 0x7531

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ll4/a$c;->a:Ll4/a;

    invoke-static {v0}, Ll4/a;->e(Ll4/a;)I

    move-result v0

    const/16 v1, 0x7532

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Ll4/a$c;->a:Ll4/a;

    invoke-virtual {v0}, Ll4/a;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ll4/a$c;->a:Ll4/a;

    invoke-static {v1}, Ll4/a;->f(Ll4/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ll4/j;->g(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
