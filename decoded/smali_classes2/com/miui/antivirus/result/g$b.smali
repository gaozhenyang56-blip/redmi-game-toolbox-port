.class Lcom/miui/antivirus/result/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/result/g;->s(Lcom/miui/antivirus/result/g;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/result/g;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/miui/antivirus/result/g;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/result/g;Lcom/miui/antivirus/result/g;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/g$b;->c:Lcom/miui/antivirus/result/g;

    iput-object p2, p0, Lcom/miui/antivirus/result/g$b;->a:Lcom/miui/antivirus/result/g;

    iput-object p3, p0, Lcom/miui/antivirus/result/g$b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-nez p2, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/miui/antivirus/result/g$b;->c:Lcom/miui/antivirus/result/g;

    iget-object p2, p0, Lcom/miui/antivirus/result/g$b;->a:Lcom/miui/antivirus/result/g;

    iget-object v0, p0, Lcom/miui/antivirus/result/g$b;->b:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/miui/antivirus/result/g;->a(Lcom/miui/antivirus/result/g;Lcom/miui/antivirus/result/g;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
