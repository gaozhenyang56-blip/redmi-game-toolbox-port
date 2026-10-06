.class Lcom/miui/antivirus/result/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/result/g;->bindView(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/result/g;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/result/g;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/g$a;->a:Lcom/miui/antivirus/result/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/g$a;->a:Lcom/miui/antivirus/result/g;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, v0, p1}, Lcom/miui/antivirus/result/g;->s(Lcom/miui/antivirus/result/g;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method
