.class Lmiuix/preference/i$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/i$c;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/preference/i$c;


# direct methods
.method constructor <init>(Lmiuix/preference/i$c;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/i$c$a;->a:Lmiuix/preference/i$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmiuix/preference/i$c$a;->a:Lmiuix/preference/i$c;

    iget-object v0, v0, Lmiuix/preference/i$c;->a:Lmiuix/preference/i;

    invoke-virtual {v0}, Lmiuix/preference/i;->Z()V

    return-void
.end method
