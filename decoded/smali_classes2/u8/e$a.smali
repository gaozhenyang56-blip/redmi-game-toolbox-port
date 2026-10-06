.class Lu8/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/e;->f(Lq6/i;Lcom/miui/gamebooster/voicechanger/model/VoiceModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lq6/i;

.field final synthetic c:Lcom/miui/gamebooster/voicechanger/model/VoiceModel;

.field final synthetic d:Lu8/e;


# direct methods
.method constructor <init>(Lu8/e;ILq6/i;Lcom/miui/gamebooster/voicechanger/model/VoiceModel;)V
    .locals 0

    iput-object p1, p0, Lu8/e$a;->d:Lu8/e;

    iput p2, p0, Lu8/e$a;->a:I

    iput-object p3, p0, Lu8/e$a;->b:Lq6/i;

    iput-object p4, p0, Lu8/e$a;->c:Lcom/miui/gamebooster/voicechanger/model/VoiceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lu8/e$a;->d:Lu8/e;

    iget v1, p0, Lu8/e$a;->a:I

    iget-object v2, p0, Lu8/e$a;->b:Lq6/i;

    iget-object v3, p0, Lu8/e$a;->c:Lcom/miui/gamebooster/voicechanger/model/VoiceModel;

    invoke-virtual {v0, v1, v2, p1, v3}, Lu8/e;->h(ILq6/i;Landroid/view/View;Lcom/miui/gamebooster/voicechanger/model/VoiceModel;)V

    return-void
.end method
