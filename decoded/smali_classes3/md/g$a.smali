.class Lmd/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmd/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lmd/g;


# direct methods
.method constructor <init>(Lmd/g;)V
    .locals 0

    iput-object p1, p0, Lmd/g$a;->a:Lmd/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lmd/g$a;->a:Lmd/g;

    invoke-static {v0}, Lmd/g;->o(Lmd/g;)I

    move-result v0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lmd/g$a;->a:Lmd/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnd/a;->j(Z)V

    :cond_0
    iget-object v0, p0, Lmd/g$a;->a:Lmd/g;

    invoke-static {v0, p1}, Lmd/g;->p(Lmd/g;I)I

    :cond_1
    return-void
.end method
