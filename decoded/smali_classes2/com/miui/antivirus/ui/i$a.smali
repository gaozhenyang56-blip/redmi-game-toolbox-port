.class Lcom/miui/antivirus/ui/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/ui/i;->f(Landroid/net/wifi/WifiInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/ui/i;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/i$a;->a:Lcom/miui/antivirus/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/antivirus/ui/i$a;->a:Lcom/miui/antivirus/ui/i;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/antivirus/ui/i;->a(Lcom/miui/antivirus/ui/i;Lcom/miui/antivirus/ui/g;)Lcom/miui/antivirus/ui/g;

    return-void
.end method
