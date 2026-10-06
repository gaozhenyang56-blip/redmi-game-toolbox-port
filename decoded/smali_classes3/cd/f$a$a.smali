.class Lcd/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcd/f$a;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcd/f;

.field final synthetic b:Lcd/f$a;


# direct methods
.method constructor <init>(Lcd/f$a;Lcd/f;)V
    .locals 0

    iput-object p1, p0, Lcd/f$a$a;->b:Lcd/f$a;

    iput-object p2, p0, Lcd/f$a$a;->a:Lcd/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcd/f$a$a;->a:Lcd/f;

    invoke-virtual {v0, p1}, Lcd/f;->onClick(Landroid/view/View;)V

    return-void
.end method
