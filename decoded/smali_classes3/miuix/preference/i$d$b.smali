.class Lmiuix/preference/i$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/i$d;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/preference/i$d;


# direct methods
.method constructor <init>(Lmiuix/preference/i$d;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/i$d$b;->a:Lmiuix/preference/i$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmiuix/preference/i$d$b;->a:Lmiuix/preference/i$d;

    iget-object v0, v0, Lmiuix/preference/i$d;->a:Lmiuix/preference/i;

    invoke-virtual {v0}, Lmiuix/preference/i;->Z()V

    return-void
.end method
