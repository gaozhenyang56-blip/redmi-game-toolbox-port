.class public final Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/mijia/AlertWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# instance fields
.field private final deviceImg:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final homeName:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final message:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final roomName:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final time:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0308

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.device)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;->deviceImg:Landroid/widget/ImageView;

    const v0, 0x7f0b077f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.message_title)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;->message:Landroid/widget/TextView;

    const v0, 0x7f0b04f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;->homeName:Landroid/widget/TextView;

    const v0, 0x7f0b09bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;->roomName:Landroid/widget/TextView;

    const v0, 0x7f0b0bc2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;->time:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;)V
    .locals 6
    .param p1    # Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "warning"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;->getAlertType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "water_leak"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;->deviceImg:Landroid/widget/ImageView;

    const v1, 0x7f080a16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;->message:Landroid/widget/TextView;

    const v1, 0x7f121c32

    goto :goto_0

    :sswitch_1
    const-string v1, "break_lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;->deviceImg:Landroid/widget/ImageView;

    const v1, 0x7f080a13

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;->message:Landroid/widget/TextView;

    const v1, 0x7f121c33

    goto :goto_0

    :sswitch_2
    const-string v1, "smoke"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;->deviceImg:Landroid/widget/ImageView;

    const v1, 0x7f080a15

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;->message:Landroid/widget/TextView;

    const v1, 0x7f121c31

    goto :goto_0

    :sswitch_3
    const-string v1, "gas_leak"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;->deviceImg:Landroid/widget/ImageView;

    const v1, 0x7f080a14

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;->message:Landroid/widget/TextView;

    const v1, 0x7f121c30

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;->homeName:Landroid/widget/TextView;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;->getHomeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;->roomName:Landroid/widget/TextView;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;->getRoomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;->time:Landroid/widget/TextView;

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/miui/warningcenter/mijia/AlertWindowAdapter;->access$getFormatter$cp()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;->getCreateTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f7fd6f7 -> :sswitch_3
        0x687c96f -> :sswitch_2
        0x4dadec6b -> :sswitch_1
        0x74e5298b -> :sswitch_0
    .end sparse-switch
.end method
