.class Lcom/miui/common/base/BaseAcquireCtaActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/base/BaseAcquireCtaActivity;->dealWithCTAActivityResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/common/base/BaseAcquireCtaActivity;


# direct methods
.method constructor <init>(Lcom/miui/common/base/BaseAcquireCtaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/base/BaseAcquireCtaActivity$a;->a:Lcom/miui/common/base/BaseAcquireCtaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/BaseAcquireCtaActivity$a;->a:Lcom/miui/common/base/BaseAcquireCtaActivity;

    sget-object v1, Leg/o;->a:Ljava/lang/String;

    invoke-static {v0}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lue/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/miui/common/base/BaseAcquireCtaActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CTA open agree = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
