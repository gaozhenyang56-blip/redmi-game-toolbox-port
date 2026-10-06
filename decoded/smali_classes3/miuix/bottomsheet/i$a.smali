.class Lmiuix/bottomsheet/i$a;
.super Landroidx/activity/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/i;-><init>(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/bottomsheet/i;


# direct methods
.method constructor <init>(Lmiuix/bottomsheet/i;Z)V
    .locals 0

    iput-object p1, p0, Lmiuix/bottomsheet/i$a;->a:Lmiuix/bottomsheet/i;

    invoke-direct {p0, p2}, Landroidx/activity/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    iget-object v0, p0, Lmiuix/bottomsheet/i$a;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->d(Lmiuix/bottomsheet/i;)Lmiuix/bottomsheet/i$k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/i$a;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->d(Lmiuix/bottomsheet/i;)Lmiuix/bottomsheet/i$k;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/bottomsheet/i$k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/i$a;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->e(Lmiuix/bottomsheet/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/bottomsheet/i$a;->a:Lmiuix/bottomsheet/i;

    invoke-virtual {v0}, Lmiuix/bottomsheet/i;->w()V

    :cond_1
    return-void
.end method
