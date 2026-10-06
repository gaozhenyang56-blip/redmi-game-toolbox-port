.class Lcom/miui/powercenter/batteryhistory/y$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/y;->v(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/powercenter/batteryhistory/y;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/y;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$j;->b:Lcom/miui/powercenter/batteryhistory/y;

    iput-boolean p2, p0, Lcom/miui/powercenter/batteryhistory/y$j;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/y$j;->b:Lcom/miui/powercenter/batteryhistory/y;

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/y$j;->a:Z

    invoke-static {p2, v0}, Lcom/miui/powercenter/batteryhistory/y;->f(Lcom/miui/powercenter/batteryhistory/y;Z)V

    iget-boolean p2, p0, Lcom/miui/powercenter/batteryhistory/y$j;->a:Z

    invoke-static {p2}, Lhd/a;->h1(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
