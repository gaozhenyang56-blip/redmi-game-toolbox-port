.class Lcom/miui/antivirus/ui/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/ui/e;->b(Lcom/miui/antivirus/model/a;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/model/a;

.field final synthetic b:Lcom/miui/antivirus/ui/e;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/e;Lcom/miui/antivirus/model/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/e$b;->b:Lcom/miui/antivirus/ui/e;

    iput-object p2, p0, Lcom/miui/antivirus/ui/e$b;->a:Lcom/miui/antivirus/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/antivirus/ui/e$b;->b:Lcom/miui/antivirus/ui/e;

    iget-object p1, p1, Lcom/miui/antivirus/ui/e;->b:Lw4/e;

    iget-object p2, p0, Lcom/miui/antivirus/ui/e$b;->a:Lcom/miui/antivirus/model/a;

    const/16 v0, 0x41c

    invoke-virtual {p1, v0, p2}, Lw4/e;->a(ILjava/lang/Object;)V

    return-void
.end method
