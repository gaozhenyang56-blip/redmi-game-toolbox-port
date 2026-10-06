.class Lcom/miui/superpower/statusbar/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/statusbar/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/superpower/statusbar/a;


# direct methods
.method constructor <init>(Lcom/miui/superpower/statusbar/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/a$b;->a:Lcom/miui/superpower/statusbar/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/superpower/statusbar/a$b;->a:Lcom/miui/superpower/statusbar/a;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/a;->j(Lcom/miui/superpower/statusbar/a;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
