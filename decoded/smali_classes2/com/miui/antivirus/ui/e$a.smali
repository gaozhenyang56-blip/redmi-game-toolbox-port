.class Lcom/miui/antivirus/ui/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/ui/e;->c(Lcom/miui/antivirus/model/a;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/model/a;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/miui/antivirus/ui/e;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/e;Lcom/miui/antivirus/model/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/e$a;->c:Lcom/miui/antivirus/ui/e;

    iput-object p2, p0, Lcom/miui/antivirus/ui/e$a;->a:Lcom/miui/antivirus/model/a;

    iput-object p3, p0, Lcom/miui/antivirus/ui/e$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-nez p2, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/miui/antivirus/ui/e$a;->c:Lcom/miui/antivirus/ui/e;

    iget-object p2, p0, Lcom/miui/antivirus/ui/e$a;->a:Lcom/miui/antivirus/model/a;

    iget-object v0, p0, Lcom/miui/antivirus/ui/e$a;->b:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/miui/antivirus/ui/e;->a(Lcom/miui/antivirus/ui/e;Lcom/miui/antivirus/model/a;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
