.class Lv7/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/c;->c(Landroid/content/Context;Lv7/c$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lv7/c$e;

.field final synthetic b:Lv7/c;


# direct methods
.method constructor <init>(Lv7/c;Lv7/c$e;)V
    .locals 0

    iput-object p1, p0, Lv7/c$b;->b:Lv7/c;

    iput-object p2, p0, Lv7/c$b;->a:Lv7/c$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lv7/c$b;->a:Lv7/c$e;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lv7/c$e;->onClick()V

    :cond_0
    return-void
.end method
