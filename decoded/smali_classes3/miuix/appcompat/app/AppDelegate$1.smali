.class Lmiuix/appcompat/app/AppDelegate$1;
.super Lmiuix/responsive/page/manager/BaseResponseStateManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AppDelegate;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AppDelegate;Lim/b;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate$1;->this$0:Lmiuix/appcompat/app/AppDelegate;

    invoke-direct {p0, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;-><init>(Lim/b;)V

    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$1;->this$0:Lmiuix/appcompat/app/AppDelegate;

    iget-object v0, v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    return-object v0
.end method
