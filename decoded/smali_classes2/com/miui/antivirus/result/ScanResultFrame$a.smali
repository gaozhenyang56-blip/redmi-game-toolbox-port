.class Lcom/miui/antivirus/result/ScanResultFrame$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/result/ScanResultFrame;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/d0<",
        "Lcom/miui/international/bean/AntiGlobalAdBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/result/ScanResultFrame;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/result/ScanResultFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/ScanResultFrame$a;->a:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/international/bean/AntiGlobalAdBean;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame$a;->a:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-static {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->a(Lcom/miui/antivirus/result/ScanResultFrame;)Lcom/miui/antivirus/result/n;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame$a;->a:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-static {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->a(Lcom/miui/antivirus/result/ScanResultFrame;)Lcom/miui/antivirus/result/n;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/miui/antivirus/result/ScanResultFrame$a;->a:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-static {v3}, Lcom/miui/antivirus/result/ScanResultFrame;->a(Lcom/miui/antivirus/result/ScanResultFrame;)Lcom/miui/antivirus/result/n;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/antivirus/result/a;

    instance-of v4, v3, Lcom/miui/international/bean/AntiGlobalAdBean;

    if-eqz v4, :cond_2

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/antivirus/result/ScanResultFrame$a;->a:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-static {p1}, Lcom/miui/antivirus/result/ScanResultFrame;->a(Lcom/miui/antivirus/result/ScanResultFrame;)Lcom/miui/antivirus/result/n;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object p1, p0, Lcom/miui/antivirus/result/ScanResultFrame$a;->a:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-static {p1}, Lcom/miui/antivirus/result/ScanResultFrame;->a(Lcom/miui/antivirus/result/ScanResultFrame;)Lcom/miui/antivirus/result/n;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/miui/antivirus/result/ScanResultFrame$a;->a:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-static {p1}, Lcom/miui/antivirus/result/ScanResultFrame;->a(Lcom/miui/antivirus/result/ScanResultFrame;)Lcom/miui/antivirus/result/n;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/international/bean/AntiGlobalAdBean;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/result/ScanResultFrame$a;->a(Lcom/miui/international/bean/AntiGlobalAdBean;)V

    return-void
.end method
