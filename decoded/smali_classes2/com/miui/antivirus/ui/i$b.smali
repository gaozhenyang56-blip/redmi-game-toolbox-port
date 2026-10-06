.class Lcom/miui/antivirus/ui/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/ui/i;->d()V
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

    iput-object p1, p0, Lcom/miui/antivirus/ui/i$b;->a:Lcom/miui/antivirus/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/ui/i$b;->a:Lcom/miui/antivirus/ui/i;

    invoke-static {v0}, Lcom/miui/antivirus/ui/i;->c(Lcom/miui/antivirus/ui/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo2/i;->c(Landroid/content/Context;)Lo2/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/i$b;->a:Lcom/miui/antivirus/ui/i;

    invoke-static {v1}, Lcom/miui/antivirus/ui/i;->b(Lcom/miui/antivirus/ui/i;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo2/i;->a(Landroid/net/wifi/WifiInfo;)V

    return-void
.end method
