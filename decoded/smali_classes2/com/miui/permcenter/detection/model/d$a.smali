.class public Lcom/miui/permcenter/detection/model/d$a;
.super Lcom/miui/permcenter/detection/model/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/detection/model/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/permcenter/detection/model/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/detection/model/b;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/detection/model/d$a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/permcenter/detection/model/d$a;->d:Ljava/lang/String;

    iput p3, p0, Lcom/miui/permcenter/detection/model/d$a;->e:I

    iput-wide p4, p0, Lcom/miui/permcenter/detection/model/d$a;->f:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(I)Landroid/text/SpannableStringBuilder;
    .locals 4

    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/miui/permcenter/detection/model/d$a;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-wide v2, p0, Lcom/miui/permcenter/detection/model/d$a;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method
