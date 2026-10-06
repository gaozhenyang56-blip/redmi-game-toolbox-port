.class Lde/i$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/i;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lde/i;


# direct methods
.method constructor <init>(Lde/i;)V
    .locals 0

    iput-object p1, p0, Lde/i$j;->a:Lde/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lde/i$j;->a:Lde/i;

    invoke-static {p1}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lde/j;->x(Landroid/content/Context;)V

    return-void
.end method
