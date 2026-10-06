.class Lde/i$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/i$n;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lde/i$n;


# direct methods
.method constructor <init>(Lde/i$n;)V
    .locals 0

    iput-object p1, p0, Lde/i$n$a;->a:Lde/i$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lde/i$n$a;->a:Lde/i$n;

    iget-object p1, p1, Lde/i$n;->a:Lde/i;

    invoke-static {p1}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "extreme_dialog"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lde/j;->L(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
