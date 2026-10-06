.class Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Lum/b;


# direct methods
.method public constructor <init>(Lum/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$c;->a:Lum/b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "2.0"

    invoke-static {v0}, Lmiuix/view/HapticCompat;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$c;->a:Lum/b;

    sget v1, Lmiuix/view/i;->w:I

    invoke-virtual {v0, v1}, Lum/b;->f(I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$c;->a:Lum/b;

    sget v1, Lmiuix/view/i;->i:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lum/b;->g(II)Z

    :goto_0
    return-void
.end method
