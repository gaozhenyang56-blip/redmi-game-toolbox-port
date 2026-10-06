.class Lde/i$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lde/i$i;->a:Lde/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lde/i$i;->a:Lde/i;

    invoke-static {p1}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lde/j;->q(Landroid/content/Context;)V

    iget-object p1, p0, Lde/i$i;->a:Lde/i;

    invoke-virtual {p1}, Lde/i;->F()V

    const/4 p1, 0x1

    const-string p2, "LowBatteryDialog"

    invoke-static {p1, p2}, Lhd/a;->b1(ZLjava/lang/String;)V

    return-void
.end method
