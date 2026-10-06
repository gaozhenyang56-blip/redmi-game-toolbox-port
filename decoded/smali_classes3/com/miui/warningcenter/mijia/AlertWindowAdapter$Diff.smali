.class final Lcom/miui/warningcenter/mijia/AlertWindowAdapter$Diff;
.super Landroidx/recyclerview/widget/h$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/mijia/AlertWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Diff"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/h$f<",
        "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/h$f;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;)Z
    .locals 1
    .param p1    # Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;

    check-cast p2, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$Diff;->areContentsTheSame(Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;)Z
    .locals 1
    .param p1    # Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;

    check-cast p2, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$Diff;->areItemsTheSame(Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;)Z

    move-result p1

    return p1
.end method
