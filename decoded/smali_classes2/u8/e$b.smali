.class Lu8/e$b;
.super Lyh/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/e;->i(Lcom/miui/gamebooster/customview/VoiceModeView;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/gamebooster/customview/VoiceModeView;

.field final synthetic c:Z

.field final synthetic d:Lu8/e;


# direct methods
.method constructor <init>(Lu8/e;ZLcom/miui/gamebooster/customview/VoiceModeView;Z)V
    .locals 0

    iput-object p1, p0, Lu8/e$b;->d:Lu8/e;

    iput-boolean p2, p0, Lu8/e$b;->a:Z

    iput-object p3, p0, Lu8/e$b;->b:Lcom/miui/gamebooster/customview/VoiceModeView;

    iput-boolean p4, p0, Lu8/e$b;->c:Z

    invoke-direct {p0}, Lyh/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-boolean p1, p0, Lu8/e$b;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lu8/e$b;->b:Lcom/miui/gamebooster/customview/VoiceModeView;

    invoke-virtual {p1, p3}, Lcom/miui/gamebooster/customview/VoiceModeView;->setNormalIconBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lu8/e$b;->b:Lcom/miui/gamebooster/customview/VoiceModeView;

    invoke-virtual {p1, p3}, Lcom/miui/gamebooster/customview/VoiceModeView;->setSelectedIconBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object p1, p0, Lu8/e$b;->b:Lcom/miui/gamebooster/customview/VoiceModeView;

    iget-boolean p2, p0, Lu8/e$b;->c:Z

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/customview/VoiceModeView;->setIonBgStatus(I)V

    return-void
.end method
