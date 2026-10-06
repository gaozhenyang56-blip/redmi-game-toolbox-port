.class Lcom/miui/antivirus/result/ScanResultFrame$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/common/customview/AutoPasteListView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/result/ScanResultFrame;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/result/ScanResultFrame;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/result/ScanResultFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/ScanResultFrame$b;->a:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame$b;->a:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-static {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->b(Lcom/miui/antivirus/result/ScanResultFrame;)Lw4/e;

    move-result-object v0

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    const/16 p1, 0x403

    invoke-virtual {v0, p1, v1}, Lw4/e;->a(ILjava/lang/Object;)V

    return-void
.end method
